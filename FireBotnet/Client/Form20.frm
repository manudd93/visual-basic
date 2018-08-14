VERSION 5.00
Begin VB.Form Form20 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "TaskManager Remoto"
   ClientHeight    =   6120
   ClientLeft      =   7770
   ClientTop       =   2985
   ClientWidth     =   3375
   LinkTopic       =   "Form20"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6120
   ScaleWidth      =   3375
   ShowInTaskbar   =   0   'False
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   1560
      Top             =   6240
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Ricevi Di Continuo"
      Height          =   255
      Left            =   600
      TabIndex        =   3
      Top             =   5640
      Width           =   2295
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Termina Processo"
      Height          =   255
      Left            =   480
      TabIndex        =   2
      Top             =   5280
      Width           =   2415
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Ricevi Lista Processi"
      Height          =   255
      Left            =   480
      TabIndex        =   1
      Top             =   4920
      Width           =   2415
   End
   Begin VB.ListBox List1 
      Height          =   4545
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   3135
   End
End
Attribute VB_Name = "Form20"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Check1_Click()
If Check1.Value = 1 Then
Timer1.Enabled = True
Else
Timer1.Enabled = False
End If

End Sub

Private Sub Command1_Click()
List1.Clear
Form1.Winsock1(Form1.Label14.Caption).SendData "process"

End Sub

Private Sub Command2_Click()

Form1.Winsock1(Form1.Label14.Caption).SendData "killprocess|" & List1.Text
List1.Clear
DoEvents

Command1_Click



End Sub

Private Sub Command3_Click()
Text1.Text = List1.Text

End Sub

Private Sub Timer1_Timer()
List1.Clear
Command1_Click
End Sub
