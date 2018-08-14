VERSION 5.00
Begin VB.Form Form4 
   Caption         =   "Funzioni Trojan Connesso A:"
   ClientHeight    =   5385
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7320
   LinkTopic       =   "Form4"
   ScaleHeight     =   5385
   ScaleWidth      =   7320
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command16 
      Caption         =   "Power Manager"
      Height          =   375
      Left            =   3840
      TabIndex        =   15
      Top             =   4560
      Width           =   3135
   End
   Begin VB.CommandButton Command15 
      Caption         =   "Funzioni Extra"
      Height          =   375
      Left            =   240
      TabIndex        =   14
      Top             =   4560
      Width           =   3375
   End
   Begin VB.CommandButton Command14 
      Caption         =   "Server Setting"
      Height          =   375
      Left            =   3840
      TabIndex        =   13
      Top             =   3960
      Width           =   3135
   End
   Begin VB.CommandButton Command13 
      Caption         =   "Chat Con Server"
      Height          =   375
      Left            =   240
      TabIndex        =   12
      Top             =   3960
      Width           =   3375
   End
   Begin VB.CommandButton Command12 
      Caption         =   "Messaggi Remoti"
      Height          =   375
      Left            =   3840
      TabIndex        =   11
      Top             =   3360
      Width           =   3135
   End
   Begin VB.CommandButton Command11 
      Caption         =   "Avvia Pagina Web"
      Height          =   375
      Left            =   240
      TabIndex        =   10
      Top             =   3360
      Width           =   3375
   End
   Begin VB.CommandButton Command10 
      Caption         =   "Esegui Remoto"
      Height          =   375
      Left            =   3840
      TabIndex        =   9
      Top             =   2760
      Width           =   3135
   End
   Begin VB.CommandButton Command9 
      Caption         =   "Promt Dei Comandi Remoto"
      Height          =   375
      Left            =   240
      TabIndex        =   8
      Top             =   2760
      Width           =   3375
   End
   Begin VB.CommandButton Command8 
      Caption         =   "File Manager"
      Height          =   375
      Left            =   3840
      TabIndex        =   7
      Top             =   2160
      Width           =   3135
   End
   Begin VB.CommandButton Command7 
      Caption         =   "FunManager"
      Height          =   375
      Left            =   240
      TabIndex        =   6
      Top             =   2160
      Width           =   3375
   End
   Begin VB.CommandButton Command6 
      Caption         =   " Password Manager"
      Height          =   375
      Left            =   3840
      TabIndex        =   5
      Top             =   1560
      Width           =   3135
   End
   Begin VB.CommandButton Command5 
      Caption         =   "TaskManager Remoto"
      Height          =   375
      Left            =   240
      TabIndex        =   4
      Top             =   1560
      Width           =   3375
   End
   Begin VB.CommandButton Command4 
      Caption         =   "KeyLogger"
      Height          =   375
      Left            =   3840
      TabIndex        =   3
      Top             =   960
      Width           =   3135
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Info Remote"
      Height          =   375
      Left            =   240
      TabIndex        =   2
      Top             =   960
      Width           =   3375
   End
   Begin VB.CommandButton Command2 
      Caption         =   "WebCam Remota"
      Height          =   375
      Left            =   3840
      TabIndex        =   1
      Top             =   360
      Width           =   3135
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Desktop Remoto"
      Height          =   375
      Left            =   240
      TabIndex        =   0
      Top             =   360
      Width           =   3375
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form5.Show
End Sub

Private Sub Command10_Click()
Form10.Show
End Sub

Private Sub Command11_Click()
Form9.Show
End Sub

Private Sub Command12_Click()
Form12.Show

End Sub

Private Sub Command13_Click()
Form14.Show

End Sub

Private Sub Command15_Click()
Form17.Show
End Sub

Private Sub Command16_Click()
Form15.Show
End Sub

Private Sub Command2_Click()
Form8.Show
End Sub

Private Sub Command3_Click()
Form21.Show
End Sub

Private Sub Command4_Click()
Form7.Show
End Sub

Private Sub Command5_Click()
Form20.Show
End Sub

Private Sub Command6_Click()
Form19.Show
End Sub

Private Sub Command7_Click()
Form13.Show

End Sub

Private Sub Command8_Click()
Form16.Show
End Sub

Private Sub Command9_Click()
Form11.Show

End Sub

Private Sub Form_Load()
Me.Caption = "Funzioni Trojan Connesso A: " & Form1.Winsock1(Form1.Label14.Caption).RemoteHostIP

End Sub
