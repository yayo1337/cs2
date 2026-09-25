// Реконструкция функций пост-загрузочного патчинга пейлоада
#include <windows.h>
#include <stdint.h>

#define RELAY_ADDR 0x279e8b810adULL  // целевой адрес перезаписываемых смещений

// 0x180001a50 — перезаписывает 4-байтовое поле смещения по адресу target+3
// так, чтобы оно указывало на RELAY_ADDR (проверка: разность в int32).
BOOL patch_disp32(uint8_t* target)
{
    int64_t disp = RELAY_ADDR - (uint64_t)target;
    if ((uint64_t)(disp + 0x80000000LL) > 0xffffffffULL)
        return FALSE;                          // не помещается в rel32
    DWORD old;
    if (!VirtualProtect(target + 3, 4, PAGE_EXECUTE_READWRITE, &old))
        return FALSE;
    *(int32_t*)(target + 3) = (int32_t)disp;
    FlushInstructionCache(GetCurrentProcess(), target, 7);
    VirtualProtect(target + 3, 4, old, &old);
    return TRUE;
}

// 0x180002b4c..0x180002b9b — затирание 5 байт NOP'ами (анти-хук/снятие проверки)
void nop5(uint8_t* addr)
{
    DWORD old;
    VirtualProtect(addr, 5, PAGE_EXECUTE_READWRITE, &old);
    memset(addr, 0x90, 5);
    FlushInstructionCache(GetCurrentProcess(), addr, 5);
    VirtualProtect(addr, 5, old, &old);
}

// 0x180002bfe..0x180002c28 — qword-запись указателя в глобаль пейлоада
void write_qword(void* addr, uint64_t value)
{
    DWORD old;
    VirtualProtect(addr, 8, PAGE_EXECUTE_READWRITE, &old);
    *(uint64_t*)addr = value;
    FlushInstructionCache(GetCurrentProcess(), addr, 8);
    VirtualProtect(addr, 8, old, &old);
}
