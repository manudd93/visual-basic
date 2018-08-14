VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Object = "{DA729E34-689F-49EA-A856-B57046630B73}#1.0#0"; "Progressbar-xp.ocx"
Begin VB.Form Form5 
   Caption         =   "Desktop Remoto"
   ClientHeight    =   9960
   ClientLeft      =   1410
   ClientTop       =   1425
   ClientWidth     =   16470
   LinkTopic       =   "Form5"
   ScaleHeight     =   9960
   ScaleWidth      =   16470
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "Visualizza Desktop"
      Height          =   375
      Left            =   120
      TabIndex        =   5
      Top             =   9480
      Width           =   1815
   End
   Begin VB.TextBox Text1 
      Alignment       =   2  'Center
      Height          =   285
      Left            =   3000
      TabIndex        =   4
      Text            =   "50"
      Top             =   9480
      Width           =   495
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Auto Aggiorna"
      Height          =   375
      Left            =   4440
      TabIndex        =   3
      Top             =   9480
      Width           =   1815
   End
   Begin VB.CommandButton Command2 
      Caption         =   "+"
      Height          =   255
      Left            =   3720
      TabIndex        =   1
      Top             =   9480
      Width           =   495
   End
   Begin VB.CommandButton Command3 
      Caption         =   "-"
      Height          =   255
      Left            =   2400
      TabIndex        =   0
      Top             =   9480
      Width           =   495
   End
   Begin Proyecto2.XP_ProgressBar ProgressBar1 
      Height          =   495
      Left            =   120
      TabIndex        =   2
      Top             =   8880
      Width           =   16215
      _ExtentX        =   28601
      _ExtentY        =   873
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
      Color           =   49152
      Scrolling       =   9
   End
   Begin MSWinsockLib.Winsock WS 
      Index           =   0
      Left            =   1800
      Top             =   7080
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.Line Line4 
      X1              =   120
      X2              =   16320
      Y1              =   8760
      Y2              =   8760
   End
   Begin VB.Line Line3 
      X1              =   120
      X2              =   120
      Y1              =   8760
      Y2              =   120
   End
   Begin VB.Line Line2 
      X1              =   120
      X2              =   16320
      Y1              =   120
      Y2              =   120
   End
   Begin VB.Line Line1 
      X1              =   16320
      X2              =   16320
      Y1              =   8760
      Y2              =   120
   End
   Begin VB.Image Image1 
      Height          =   8655
      Left            =   120
      Stretch         =   -1  'True
      Top             =   120
      Width           =   16215
   End
End
Attribute VB_Name = "Form5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Dim vIndex As Long
Dim Archivo As Boolean, File As String, FileTotal As Long, Screen As Boolean
Dim Resolucion As Byte
Dim RIP As String



Private Sub Command1_Click()
On Error Resume Next
Resolucion = Text1.Text
If Text1.Text < 1 Then
Resolucion = 1
End If
If Text1.Text > 100 Then
Resolucion = 100
End If

WS(vIndex).SendData "Screen|" & Resolucion

End Sub

Private Sub Command2_Click()
Text1.Text = Text1.Text + 1

End Sub

Private Sub Command3_Click()
Text1.Text = Text1.Text - 1
End Sub

Private Sub Command4_Click()

End Sub

Private Sub Form_Load()
WS(Index).LocalPort = 222
WS(Index).Listen
End Sub



Private Sub Picture1_Click()

End Sub

Private Sub WS_ConnectionRequest(Index As Integer, ByVal requestID As Long)
       Me.Caption = "Deskotop Remoto Connesso A: " + WS(Index).RemoteHostIP
Dim NumSock As Integer
If WS(i).State <> 7 Then
NumSock = i
WS(NumSock).Close
WS(NumSock).Accept requestID
Exit Sub
End If
Load WS(NumElem + 1)
NumSock = WS.UBound

End Sub

Private Sub WS_DataArrival(Index As Integer, ByVal bytesTotal As Long)
On Error Resume Next
Dim Datos As String
Dim vDatos() As String
WS(Index).GetData Datos

If Archivo = True Then
File = File & Datos
If Screen = True Then
ProgressBar1.Max = FileTotal
ProgressBar1.Min = 0
ProgressBar1.Value = Len(File)
End If
If Len(File) = FileTotal Then
Open "C:\capture.jpg" For Binary As #1
Put #1, 1, File
Close #1
Image1.Picture = LoadPicture("c:\capture.jpg")
Archivo = False
Screen = False
ProgressBar1.Value = 0
Kill "c:\capture.jpg"
File = ""
If Check1.Value = 1 Then
WS(vIndex).SendData "Screen|" & Resolucion
End If
Exit Sub
End If
End If

vDatos = Split(Datos, "|")

Select Case vDatos(0)
Case "Conexion"

RIP = WS(Index).RemoteHostIP

Case "Screen"
FileTotal = vDatos(1)
Archivo = True
Screen = True
WS(vIndex).SendData "OK"
End Select
End Sub
