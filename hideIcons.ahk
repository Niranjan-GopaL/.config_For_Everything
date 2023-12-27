F12::
    ControlGet, HWND, Hwnd,, SysListView321, ahk_class Progman
    if (HWND = "")
        ControlGet, HWND, Hwnd,, SysListView321, ahk_class WorkerW
    if (DllCall("IsWindowVisible", "UInt", HWND))
        WinHide, % "ahk_id " HWND
    else
        WinShow, % "ahk_id " HWND
    return  