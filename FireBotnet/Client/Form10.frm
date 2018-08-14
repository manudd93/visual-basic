VERSION 5.00
Begin VB.Form Form10 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Esegui Remoto"
   ClientHeight    =   2325
   ClientLeft      =   990
   ClientTop       =   8430
   ClientWidth     =   5115
   LinkTopic       =   "Form10"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   MousePointer    =   1  'Arrow
   ScaleHeight     =   2325
   ScaleWidth      =   5115
   ShowInTaskbar   =   0   'False
   WhatsThisButton =   -1  'True
   WhatsThisHelp   =   -1  'True
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   960
      TabIndex        =   2
      Text            =   "iexplore.exe"
      Top             =   1080
      Width           =   3975
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Annulla"
      Height          =   375
      Left            =   3480
      TabIndex        =   1
      Top             =   1800
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   375
      Left            =   1800
      TabIndex        =   0
      Top             =   1800
      Width           =   1455
   End
   Begin VB.Image Image1 
      Height          =   645
      Left            =   120
      Picture         =   "Form10.frx":0000
      Top             =   240
      Width           =   4830
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Apri:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   240
      TabIndex        =   3
      Top             =   1080
      Width           =   495
   End
End
Attribute VB_Name = "Form10"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "Run|" & Combo1.Text


End Sub

Private Sub Command2_Click()
Unload Me

End Sub
