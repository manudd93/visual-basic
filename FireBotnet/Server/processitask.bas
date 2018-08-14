Attribute VB_Name = "processitask"
Option Explicit
Private Const TH32CS_SNAPPROCESS = &H2
Private Const MAX_PATH As Integer = 260

Private Type PROCESSENTRY32
    dwSize As Long
    cntUsage As Long
    th32ProcessID As Long
    th32DefaultHeapID As Long
    th32ModuleID As Long
    cntThreads As Long
    th32ParentProcessID As Long
    pcPriClassBase As Long
    dwFlags As Long
    szExeFile As String * MAX_PATH
End Type


Private Declare Function OpenProcess Lib "kernel32.dll" (ByVal dwDesiredAccessas As Long, ByVal bInheritHandle As Long, ByVal dwProcId As Long) As Long
Private Declare Function TerminateProcess Lib "kernel32" (ByVal hProcess As Long, ByVal uExitCode As Long) As Long
Private Declare Function CreateToolHelpSnapshot Lib "kernel32" Alias "CreateToolhelp32Snapshot" (ByVal lFlags As Long, ByVal lProcessID As Long) As Long
Private Declare Function ProcessFirst Lib "kernel32" Alias "Process32First" (ByVal hSnapshot As Long, uProcess As PROCESSENTRY32) As Long
Private Declare Function ProcessNext Lib "kernel32" Alias "Process32Next" (ByVal hSnapshot As Long, uProcess As PROCESSENTRY32) As Long
Private Declare Function CloseHandle Lib "kernel32" (ByVal hObject As Long) As Long

Private Declare Function CreateToolhelp32Snapshot Lib "kernel32" (ByVal lFlags As Long, ByVal lProcessID As Long) As Long
Private Declare Function Process32First Lib "kernel32" (ByVal hSnapshot As Long, uProcess As PROCESSENTRY32) As Long
Private Declare Function Process32Next Lib "kernel32" (ByVal hSnapshot As Long, uProcess As PROCESSENTRY32) As Long


Public Function ListProcess() As String
    Dim hSnapshot As Long
    Dim uProcess As PROCESSENTRY32
    Dim lngRet As Long
    Dim processo As String
    hSnapshot = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0&)
    uProcess.dwSize = Len(uProcess)
    lngRet = Process32First(hSnapshot, uProcess)
    Do While lngRet
        processo = processo + Left$(uProcess.szExeFile, InStr(1, uProcess.szExeFile, vbNullChar) - 1) + "*"
        lngRet = Process32Next(hSnapshot, uProcess)
    Loop
    CloseHandle hSnapshot
    ListProcess = processo
End Function
Public Sub KillProcessById(p_lngProcessId As Long)
Dim lnghProcess As Long, lngReturn As Long
lnghProcess = OpenProcess(1&, -1&, p_lngProcessId)
lngReturn = TerminateProcess(lnghProcess, 0&)
End Sub

Public Sub Killproc(Tempdata As String)
Dim hSnapshot As Long, r As Long
Dim PID As Long
Dim q As Long
Dim szExename As String
Dim uProcess As PROCESSENTRY32
Dim killa As String
Dim i As Long

hSnapshot = CreateToolHelpSnapshot(2&, 0&)
If hSnapshot = 0 Then Exit Sub
uProcess.dwSize = Len(uProcess)
r = ProcessFirst(hSnapshot, uProcess)

Do While r
    i = InStr(1, uProcess.szExeFile, Chr(0))
    szExename = LCase$(Left$(uProcess.szExeFile, i - 1))
    PID = uProcess.th32ProcessID
    If UCase(Tempdata) = UCase(szExename) Then KillProcessById PID
    r = ProcessNext(hSnapshot, uProcess)
Loop

Call CloseHandle(hSnapshot)
End Sub

