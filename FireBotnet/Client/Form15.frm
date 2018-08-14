VERSION 5.00
Begin VB.Form Form15 
   Caption         =   "PoWeR MaNaGeR >:D"
   ClientHeight    =   3345
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6210
   LinkTopic       =   "Form15"
   ScaleHeight     =   3345
   ScaleWidth      =   6210
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command7 
      Caption         =   "Blocco Pc"
      Height          =   255
      Left            =   3360
      TabIndex        =   10
      Top             =   1560
      Width           =   2655
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   240
      TabIndex        =   8
      Text            =   "5000"
      Top             =   1560
      Width           =   2535
   End
   Begin VB.TextBox Text1 
      Height          =   735
      Left            =   240
      TabIndex        =   7
      Text            =   "Commento...."
      Top             =   2040
      Width           =   5775
   End
   Begin VB.CommandButton Command6 
      Caption         =   "OK!!"
      Height          =   255
      Left            =   2040
      TabIndex        =   6
      Top             =   2880
      Width           =   1935
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Forza"
      Height          =   615
      Left            =   5040
      TabIndex        =   4
      Top             =   240
      Width           =   975
   End
   Begin VB.CommandButton Command4 
      Caption         =   "LogOFF"
      Height          =   615
      Left            =   3840
      TabIndex        =   3
      Top             =   240
      Width           =   975
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Standby"
      Height          =   615
      Left            =   2640
      TabIndex        =   2
      Top             =   240
      Width           =   975
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Riavvia"
      Height          =   615
      Left            =   1440
      TabIndex        =   1
      Top             =   240
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Spengi"
      Height          =   615
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   975
   End
   Begin VB.Label Label2 
      Caption         =   "Tempo M/S"
      Height          =   255
      Left            =   840
      TabIndex        =   9
      Top             =   1200
      Width           =   1215
   End
   Begin VB.Line Line2 
      X1              =   3720
      X2              =   6240
      Y1              =   1080
      Y2              =   1080
   End
   Begin VB.Line Line1 
      X1              =   0
      X2              =   2520
      Y1              =   1080
      Y2              =   1080
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Timer Shutdown"
      Height          =   195
      Left            =   2520
      TabIndex        =   5
      Top             =   960
      Width           =   1155
   End
End
Attribute VB_Name = "Form15"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "shutdown"
End Sub

Private Sub Command2_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "reboot"
End Sub

Private Sub Command3_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "standby"
End Sub

Private Sub Command4_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "logoff"
End Sub

Private Sub Command5_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "forza"
End Sub

Private Sub Command6_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "timer|" & Text2.Text & "|" & Text1.Text

End Sub

Private Sub Command7_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "bloccopc"

End Sub
