VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Object = "{2A6D8023-0587-4248-B0CB-11006E6C640B}#4.1#0"; "CoolXPButton.ocx"
Begin VB.Form Form3 
   BackColor       =   &H00000000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Telnet Manager by xXManuddXx"
   ClientHeight    =   4230
   ClientLeft      =   6450
   ClientTop       =   4425
   ClientWidth     =   7095
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4230
   ScaleWidth      =   7095
   ShowInTaskbar   =   0   'False
   Begin VB.TextBox Text2 
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FF00&
      Height          =   2775
      Left            =   120
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   8
      Top             =   720
      Width           =   6855
   End
   Begin VB.TextBox Text4 
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FF00&
      Height          =   285
      Left            =   3000
      TabIndex        =   5
      Text            =   "80"
      Top             =   240
      Width           =   1095
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   120
      Top             =   4200
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin CoolXPButton.xpButton xpButton3 
      Height          =   255
      Left            =   6120
      TabIndex        =   4
      Top             =   3600
      Width           =   975
      _ExtentX        =   1720
      _ExtentY        =   450
      Caption         =   "Invia"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty FontOnMouseOver {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty FontDown {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.TextBox Text3 
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FF00&
      Height          =   285
      Left            =   120
      TabIndex        =   3
      Top             =   3600
      Width           =   5895
   End
   Begin CoolXPButton.xpButton xpButton2 
      Height          =   255
      Left            =   5760
      TabIndex        =   2
      Top             =   240
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   450
      Caption         =   "Disconnetti"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty FontOnMouseOver {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty FontDown {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin CoolXPButton.xpButton xpButton1 
      Height          =   255
      Left            =   4320
      TabIndex        =   1
      Top             =   240
      Width           =   1095
      _ExtentX        =   1931
      _ExtentY        =   450
      Caption         =   "Connetti"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty FontOnMouseOver {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty FontDown {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FF00&
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   2775
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "Disconnesso"
      ForeColor       =   &H0000FF00&
      Height          =   195
      Left            =   6000
      TabIndex        =   7
      Top             =   3960
      Width           =   915
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "Status:"
      ForeColor       =   &H0000FF00&
      Height          =   195
      Left            =   5280
      TabIndex        =   6
      Top             =   3960
      Width           =   495
   End
   Begin VB.Menu pop1 
      Caption         =   "Opzioni"
      Begin VB.Menu pop3 
         Caption         =   "Svuota"
      End
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Text1.Text = Form1.Text1.Text
End Sub



Private Sub pop3_Click()
Text2.Text = ""
End Sub

Private Sub Winsock1_Close()
Label2.Caption = "Disconnesso"
End Sub

Private Sub Winsock1_Connect()
Label2.Caption = "Connesso"
End Sub

Private Sub Winsock1_DataArrival(ByVal bytesTotal As Long)
Dim data As String
Winsock1.GetData data, vbString
Text2.Text = data
End Sub

Private Sub Winsock1_Error(ByVal Number As Integer, Description As String, ByVal Scode As Long, ByVal Source As String, ByVal HelpFile As String, ByVal HelpContext As Long, CancelDisplay As Boolean)
Winsock1.Close
MsgBox "Errore Di Connessione Motivo: " + Description, vbCritical, "Telnet Manager"
End Sub

Private Sub xpButton1_Click()
Winsock1.Close
Winsock1.Connect Text1.Text, Text4.Text
End Sub

Private Sub xpButton2_Click()
Winsock1.Close
Label2.Caption = "Disconnesso"
End Sub

Private Sub xpButton3_Click()
On Error Resume Next
Winsock1.SendData Text3.Text
Text2.Text = Text2.Text + Text3.Text
Text3.Text = ""
End Sub
