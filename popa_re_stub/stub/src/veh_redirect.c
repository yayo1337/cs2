// Реконструкция VEH-обработчика (0x180001530) и построителя таблицы адресов
// (цикл 0x1800018c1..0x1800019a0 + вставка 0x180001b20).
//
// Схема: пейлоад собран на машине разработчика и содержит АБСОЛЮТНЫЕ адреса
// функций Windows DLL (kernel32 и др.) этой конкретной сборки Windows.
// Загрузчик резолвит те же функции на текущей машине и строит хеш-мапу
//   FNV1a64(захардкоженный_адрес) -> реальный_адрес
// Когда пейлоад прыгает по захардкоженному адресу, возникает
// EXCEPTION_ACCESS_VIOLATION с ExceptionInformation[0] == 8 (execute),
// VEH подменяет RIP на реальный адрес и продолжает выполнение.
#include <windows.h>
#include <stdint.h>

#define FNV_OFFSET 0xcbf29ce484222325ULL
#define FNV_PRIME  0x100000001b3ULL

static uint64_t fnv1a64(uint64_t v)
{
    uint64_t h = FNV_OFFSET;
    for (int i = 0; i < 8; i++, v >>= 8)
        h = (h ^ (uint8_t)v) * FNV_PRIME;
    return h;
}

// Запись таблицы в .rdata (0x180039fd0 .. 0x1801f3dd8, шаг 0x18, ~123 000 шт.):
typedef struct {
    const char* dll;      // "KERNEL32.DLL" и др.
    const char* func;     // "EnumSystemLanguageGroupsW" и др.
    uint64_t    baked;    // захардкоженный адрес, напр. 0x7ffde644e020
} eat_entry_t;

// std::unordered_map<uint64_t baked, uint64_t resolved>, бакеты по fnv1a64(baked)
static addr_map_t g_map;

// 0x180001b20 — вставка пары {baked -> resolved} (FNV-1a, цепочки)
void addr_map_insert(const eat_entry_t* e, uint64_t resolved)
{
    uint64_t h = fnv1a64(e->baked);
    addr_map_insert_hashed(&g_map, h, e->baked, resolved);
}

// Цикл инициализации (0x1800018c1): для каждой записи таблицы
//   LoadLibraryA(e->dll); GetProcAddress(h, e->func); addr_map_insert(...)
// затем регистрация обработчика:
//   AddVectoredExceptionHandler(1, veh_redirect);

// 0x180001530 — обработчик
LONG WINAPI veh_redirect(EXCEPTION_POINTERS* ep)
{
    EXCEPTION_RECORD* rec = ep->ExceptionRecord;
    CONTEXT* ctx = ep->ContextRecord;
    if (!rec || !ctx)
        return EXCEPTION_CONTINUE_SEARCH;
    if (rec->ExceptionCode != EXCEPTION_ACCESS_VIOLATION)
        return EXCEPTION_CONTINUE_SEARCH;
    if (rec->ExceptionFlags & 1)
        return EXCEPTION_CONTINUE_SEARCH;
    if (rec->NumberParameters < 2)
        return EXCEPTION_CONTINUE_SEARCH;
    if (rec->ExceptionInformation[0] != 8)   // нарушение исполнения (DEP)
        return EXCEPTION_CONTINUE_SEARCH;

    uint64_t h = fnv1a64(ctx->Rip);
    uint64_t target = addr_map_lookup(&g_map, h, ctx->Rip);
    if (!target || target == ctx->Rip)
        return EXCEPTION_CONTINUE_SEARCH;

    ctx->Rip = target;                        // подмена адреса → продолжаем
    return EXCEPTION_CONTINUE_EXECUTION;
}
