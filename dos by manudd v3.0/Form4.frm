VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form Form4 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Mini Tools"
   ClientHeight    =   1290
   ClientLeft      =   8325
   ClientTop       =   6795
   ClientWidth     =   4740
   LinkTopic       =   "Form4"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1290
   ScaleWidth      =   4740
   ShowInTaskbar   =   0   'False
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   1920
      TabIndex        =   3
      Top             =   720
      Width           =   2415
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Trova Utente Locale"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   720
      Width           =   1695
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   4200
      Top             =   2160
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   1920
      TabIndex        =   1
      Top             =   240
      Width           =   2415
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Trova Mio IP Locale"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   1695
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Command1_Click()
Text1.Text = Winsock1.LocalIP
End Sub

Private Sub Command2_Click()
Text2.Text = Winsock1.LocalHostName
End Sub

Private Sub Label2_Click()

End Sub
