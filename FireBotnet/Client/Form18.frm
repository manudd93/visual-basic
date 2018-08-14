VERSION 5.00
Begin VB.Form Form18 
   BorderStyle     =   5  'Sizable ToolWindow
   Caption         =   "Matrix Chat 1.0 coded by xXManuddxx"
   ClientHeight    =   4905
   ClientLeft      =   60
   ClientTop       =   390
   ClientWidth     =   5100
   LinkTopic       =   "Form18"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4905
   ScaleWidth      =   5100
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   500
      Left            =   3480
      Top             =   3960
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Stop Matrix Chat"
      Height          =   255
      Left            =   2520
      TabIndex        =   3
      Top             =   4560
      Width           =   2415
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Avvia Matrix Chat"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   4560
      Width           =   2415
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Testo Lapeggiante"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   4080
      Width           =   1935
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FF00&
      Height          =   3615
      Left            =   120
      MultiLine       =   -1  'True
      TabIndex        =   0
      Top             =   240
      Width           =   4815
   End
End
Attribute VB_Name = "Form18"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Check1_Click()
If Check1.Value = 1 Then

Form1.Winsock1(Form1.Label14.Caption).SendData "lampON"
Else
Form1.Winsock1(Form1.Label14.Caption).SendData "lampOFF"
End If

End Sub

Private Sub Command1_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "MatrixOn"
Timer1.Enabled = True

End Sub

Private Sub Command2_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "MatrixOFF"
Timer1.Enabled = False
End Sub

Private Sub Timer1_Timer()
Form1.Winsock1(Form1.Label14.Caption).SendData "matrix|" & Text1.Text
End Sub
