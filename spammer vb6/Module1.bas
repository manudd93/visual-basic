Attribute VB_Name = "Module1"
Declare Function GetAsyncKeyState Lib "user32" (ByVal vKey As Long) As Integer
Const KEYEVENTF_EXTENDEDKEY = &H1
Const KEYEVENTF_KEYUP = &H2
Declare Function SystemParamsLong Lib "user32" Alias "SystemParametersInfoA" (ByVal uAction As Long, ByVal uParam As Long, lpvParam As Long, ByVal fuWinIni As Long) As Long
Const SPI_GETKEYBOARDSPEED = 10
