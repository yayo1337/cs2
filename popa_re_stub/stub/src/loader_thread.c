// Реконструкция главного потока загрузчика (0x1800028a0)
// Копирует зашифрованный/виртуализованный пейлоад из ресурса GOVNO/101
// по фиксированному адресу 0x279e8000000 и передаёт ему управление.
#include <windows.h>
#include <stdio.h>

#define PAYLOAD_BASE  ((void*)0x279e8000000ULL)   // фиксированный базовый адрес пейлоада
#define PAYLOAD_EP    ((void*)0x279e9ab57aeULL)   // EP пейлоада (RVA 0x1ab57ae)
#define PAYLOAD_SIZE  0x1c5c000                   // размер образа пейлоада из структуры

// Адреса жёстко прошитых патчей внутри пейлоада (RVA от PAYLOAD_BASE):
//  0x356b5a  — 5 байт затираются NOP'ами
//  0xb810b4  — qword-запись указателя
//  0x5b7cc0, 0x5a7093, 0x5a7088 — перезапись rel32-смещения по +3 (см. patch.c)

typedef struct {
    void*  base;    // 0x279e8000000
    void*  entry;   // 0x279e9ab57ae
    SIZE_T size;    // 0x1c5c000
} payload_desc_t;

DWORD WINAPI loader_thread(LPVOID)
{
    // --- отладочная консоль ---
    if (AllocConsole()) {
        FILE* f;
        freopen_s(&f, "CONOUT$", "w", stdout);
        freopen_s(&f, "CONOUT$", "w", stderr);
        freopen_s(&f, "CONIN$",  "r", stdin);
        SetConsoleTitleW(L"<обфусцированная строка в .rdata>"); // 0x18004a198
    }

    payload_desc_t* pd = malloc(sizeof(payload_desc_t));
    pd->base  = PAYLOAD_BASE;
    pd->entry = PAYLOAD_EP;
    pd->size  = PAYLOAD_SIZE;

    // --- ресурс GOVNO / 101 / 1033: 31 223 808 байт, PE32+ DLL ---
    HRSRC res = FindResourceW(GetModuleHandleW(NULL), (LPCWSTR)101, L"GOVNO");
    if (!res) { log_err("FindResourceW failed: %u", GetLastError()); goto load_lib; }
    DWORD resSize = SizeofResource(NULL, res);
    if (!resSize) { log_err("SizeofResource failed: %u", GetLastError()); goto load_lib; }
    HGLOBAL hRes = LoadResource(NULL, res);
    if (!hRes) { log_err("LoadResource failed: %u", GetLastError()); goto load_lib; }
    void* resData = LockResource(hRes);
    if (!resData) { log_err("LockResource failed"); goto load_lib; }

    // --- сырой маппинг: file offset == RVA, секции с RawSize=0 остаются нулями ---
    void* img = VirtualAlloc(PAYLOAD_BASE, resSize,
                             MEM_COMMIT | MEM_RESERVE, PAGE_EXECUTE_READWRITE);
    if (!img) { log_err("VirtualAlloc failed: %u", GetLastError()); goto load_lib; }
    memcpy(img, resData, resSize);

load_lib:
    LoadLibraryA("<обфусцированная строка>"); // 0x18004b168

    // --- проверка окружения (0x1800016c0); при провале — MessageBoxA ---
    char errbuf[0x28] = {};
    if (!environment_check(errbuf))            // строит 39-символьную строку ошибки
        MessageBoxA(NULL, errbuf, "<title>", MB_ICONERROR);

    // --- запуск пейлоада: DllMain(base, DLL_PROCESS_ATTACH, 0) ---
    ((BOOL(WINAPI*)(void*, DWORD, void*))pd->entry)(PAYLOAD_BASE, 1, NULL);

    // --- пост-загрузочные патчи по жёстким адресам (см. patch.c) ---
    nop5(0x279e8356b5a);            // 5 × 0x90
    write_qword(0x279e8b810b4);     // сохранение указателя
    patch_disp32(0x279e85b7cc0);    // retarget → 0x279e8b810ad
    patch_disp32(0x279e85a7093);
    patch_disp32(0x279e85a7088);
    return 0;
}
