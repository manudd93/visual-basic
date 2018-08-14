VERSION 5.00
Begin VB.Form Form3 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00E9AD81&
   BorderStyle     =   5  'Sizable ToolWindow
   Caption         =   "Bannati"
   ClientHeight    =   3810
   ClientLeft      =   14655
   ClientTop       =   2265
   ClientWidth     =   3240
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   OLEDropMode     =   1  'Manual
   ScaleHeight     =   3810
   ScaleWidth      =   3240
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton Command3 
      Caption         =   "Reset"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   3360
      Width           =   3015
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Aggiungi"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   3120
      Width           =   3015
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Elimina"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   2880
      Width           =   3015
   End
   Begin VB.ListBox List1 
      BackColor       =   &H00E9AD81&
      Height          =   2010
      Left            =   120
      TabIndex        =   1
      Top             =   720
      Width           =   3015
   End
   Begin VB.Image Image1 
      Height          =   255
      Left            =   0
      Picture         =   "Form3.frx":0000
      Stretch         =   -1  'True
      Top             =   0
      Width           =   3255
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackColor       =   &H00E9AD81&
      Caption         =   "LIsta Utenti Bannati"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   720
      TabIndex        =   0
      Top             =   360
      Width           =   1710
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()

List1.RemoveItem List1.ListIndex

End Sub

Private Sub Command2_Click()
Dim x As String
x = InputBox("Inserisci Un Indirizzo IP", "Banned List IP Add")

List1.AddItem x

End Sub

Private Sub Command3_Click()
List1.Clear
End Sub
