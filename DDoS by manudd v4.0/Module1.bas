Attribute VB_Name = "Module1"

Option Explicit
Private Declare Function GetTempFileName_ Lib "kernel32" Alias "GetTempFileNameA" (ByVal lpszPath As String, ByVal lpPrefixString As String, ByVal wUnique As Long, ByVal lpTempFileName As String) As Long
Private Declare Function OpenProcess Lib "kernel32" (ByVal dwDesiredAccess As Long, ByVal bInheritHandle As Long, ByVal dwProcessId As Long) As Long
Private Declare Function CloseHandle Lib "kernel32" (ByVal hObject As Long) As Long
Private Declare Function WaitForSingleObject Lib "kernel32" (ByVal hHandle As Long, ByVal dwMilliseconds As Long) As Long
Private Const INFINITE = &HFFFF      '  Infinite timeout
Private Const WAIT_FAILED = -1&
Private Const SYNCHRONIZE = &H100000

Private Function GetTempFileName() As String
    Dim buffer As String * 260
    If GetTempFileName_(Environ("temp"), "pin", 0, buffer) = 0 Then Err.Raise 51
    GetTempFileName = Left(buffer, InStr(buffer, Chr$(0)) - 1)
End Function
Public Function Ping(ByVal host As String) As Integer
    Dim tempFile As String
    Dim tFN As Integer
    Dim unparsedString As String
    Dim procHandle As Long
    Dim msPos As Long
    Dim delimPos As Long
    Ping = -1
    tempFile = GetTempFileName()
    procHandle = OpenProcess(SYNCHRONIZE, 0, Shell(Environ("comspec") & " /c ping -n 1 " & host & " > " & tempFile, vbHide))
    If WaitForSingleObject(procHandle, INFINITE) = WAIT_FAILED Then Err.Raise 51
    CloseHandle procHandle
    tFN = FreeFile()
    Open tempFile For Input As tFN
    Do
        Line Input #tFN, unparsedString
        msPos = InStr(unparsedString, "ms ")
        If msPos Then
            delimPos = Max(InStrRev(unparsedString, " ", msPos), InStrRev(unparsedString, "<", msPos), InStrRev(unparsedString, "=", msPos)) + 1
            On Error Resume Next
            Ping = Mid$(unparsedString, delimPos, msPos - delimPos)
            Exit Do
        End If
    Loop Until EOF(tFN)
    Close tFN
    Kill tempFile
End Function
Private Function Max(ParamArray values() As Variant) As Variant
    Dim counter As Long
    For counter = LBound(values) To UBound(values)
        If values(counter) > Max Then Max = values(counter)
    Next
End Function






