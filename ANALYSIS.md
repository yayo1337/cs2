# Анализ cstrike.dll (5,35 МБ, PE32+ x64, не упакована)

## Что это
Нативная DLL с прилинкованным **Google protobuf 3.21.8** и сгенерированными
сообщениями Steam/GameCoordinator для CS2 (≈1300 CMsg*/k_EMsg* типов:
`CMsgGCCStrike15_v2_MatchmakingClient2GCHello`, `CMsgGCStorePurchaseInit`,
Steam-сообщения и т.д.). Также присутствуют KV3-ресурсные строки
(`csgo_character.vfx`, dev-материалы) и D3DCOMPILER_47.dll (D3DCompile).

Пути разработчика в бинаре: `C:\Users\koval\Desktop\protobuf-3.21.8\...`
(стандартные пути исходников protobuf, не чита).

Чего **нет**: импортов сокетов (ws2_32/winphtp), CreateRemoteThread/
WriteProcessMemory/OpenProcess, MinHook/детуров, ссылок на client.dll/
engine2/schemasystem игры. Никаких строк оффсетов игры (m_iHealth и т.п.).
То есть это **не готовый чит**, а библиотека-прослойка: скорее всего GC-клиент /
инвентарь-тул / основа для чего-то, работающего с Game Coordinator CS2.
Единственные «читовские» строки — `rpt_aimbot`, `rpt_wallhack`, `rpt_speedhack`,
но это репорт-константы самой игры из прото-схем, не реализация.

## Защита
Частичная строковая обфускация в пользовательском коде: строки собираются
через цепочки `movabs` (8-байтовые константы) + `vpxor` ymm-блоков.
Пример расшифрованного: имя проверяемого модуля `navsystem.dll` (DllMain
сверяет, откуда загружена DLL, через PEB). Есть анти-отладочный паттерн
(поток с Sleep(500) в цикле — вероятно heartbeat/anti-debug).

## Структура кода
- 16 674 функции (по .pdata). Подавляющее большинство — protobuf runtime
  и сгенерированные message-классы.
- Точка входа пользовательского кода: DllMain @ 0x180217010
  (DLL_PROCESS_ATTACH: читает PEB, проверяет модуль-хост, при успехе —
  инициализация 0x1802159b0 и запуск потока).
- Полный декомпил 16к функций статическими скриптами нецелесообразен —
  это работа для IDA/Ghidra на Windows. Ключевые адреса:
  - DllMain (user):      0x180217010
  - init_fn:             0x1802159b0  (строки movabs+vpxor)
  - anti-debug loop:     0x180216ff0  (Sleep(500) цикл)
  - cleanup:             0x180216d20
  - CRT dispatch:        0x18037cea4 / EP 0x18037cfcc

## Файлы
- `cstrike.dll` — оригинал
- `strings.txt` — все строки (13 866 уникальных)
