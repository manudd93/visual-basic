Attribute VB_Name = "Function"
Public Declare Function GetWindowsDirectory Lib "kernel32" Alias "GetWindowsDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long
Public Declare Function GetSystemDirectory Lib "kernel32" Alias "GetSystemDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long
Public Declare Function GetUserName Lib "advapi32.dll" Alias "GetUserNameA" (ByVal lpBuffer As String, nSize As Long) As Long
Public Declare Function mciSendStringA Lib "winmm.dll" (ByVal lpstrCommand As String, ByVal lpstrReturnString As Any, ByVal wReturnLength As Integer, ByVal hCallback As Integer) As Long
Public Declare Function SwapMouseButton& Lib "user32" (ByVal bSwap As Long)

Public Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hWnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long

Public Declare Function CloseWindow Lib "user32" (ByVal hWnd As Long) As Long
Public Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String) As Long

Public Declare Function ExitWindowsEx Lib "user32" (ByVal uFlags As Long, ByVal dwReserved As Long) As Long
    ' Constantes pour ExitWindowsEx
    Public Const EWX_LOGOFF = 0
    Public Const EWX_SHUTDOWN = 1
    Public Const EWX_REBOOT = 2
    Public Const EWX_FORCE = 4
    
Public Declare Function SetCursorPos Lib "user32" (ByVal x As Long, ByVal y As Long) As Long
Public Declare Function GetCursorPos Lib "user32" (lpPoint As POINTAPI) As Long
    Type POINTAPI
        x As Long
        y As Long
    End Type
    

