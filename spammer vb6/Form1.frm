VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4305
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4920
   LinkTopic       =   "Form1"
   ScaleHeight     =   4305
   ScaleWidth      =   4920
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer2 
      Interval        =   100
      Left            =   4200
      Top             =   3840
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   0
      Top             =   3840
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   720
      TabIndex        =   2
      Top             =   1920
      Width           =   3375
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Stop"
      Height          =   375
      Left            =   720
      TabIndex        =   1
      Top             =   1200
      Width           =   3375
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Start"
      Height          =   375
      Left            =   720
      TabIndex        =   0
      Top             =   600
      Width           =   3375
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Timer1.Enabled = True
End Sub

Private Sub Command2_Click()
Timer1.Enabled = False
End Sub

Private Sub Timer1_Timer()
SendKeys Text1.Text
SendKeys "{Enter}"
End Sub

Private Sub Timer2_Timer()
If GetAsyncKeyState(vbKeyF9) Then
Timer1.Enabled = False
End If
If GetAsyncKeyState(vbKeyF10) Then
Timer1.Enabled = True
End If
End Sub
