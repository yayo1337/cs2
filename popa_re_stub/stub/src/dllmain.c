// Реконструкция DllMain внешнего загрузчика (popa hackvshack.net.dll)
// Оригинал: EP = 0x18000348c, образ x64, imagebase 0x180000000
#include <windows.h>

DWORD WINAPI loader_thread(LPVOID); // 0x1800028a0, см. loader_thread.c

// 0x180002d00 — вызывается CRT-обёрткой DllMain
static BOOL on_process_attach(HMODULE self, DWORD reason)
{
    if (reason != DLL_PROCESS_ATTACH)
        return TRUE;

    // CreateThread(NULL, 0, loader_thread, NULL, 0, NULL)
    if (!CreateThread(NULL, 0, loader_thread, NULL, 0, NULL)) {
        // printf-обёртка 0x1800010a0: "create thread failed: %u"
        return FALSE;
    }
    return TRUE;
}

BOOL WINAPI DllMain(HMODULE self, DWORD reason, LPVOID reserved)
{
    if (reason == DLL_PROCESS_ATTACH)
        crt_security_init();        // 0x180003a94 — инициализация security cookie
    return crt_dllmain_dispatch(self, reason, reserved); // 0x180003364 → on_process_attach
}
