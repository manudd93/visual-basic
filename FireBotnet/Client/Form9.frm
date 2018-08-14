VERSION 5.00
Begin VB.Form Form9 
   Caption         =   "Avvia Una Pagina Web"
   ClientHeight    =   630
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6975
   LinkTopic       =   "Form9"
   ScaleHeight     =   630
   ScaleWidth      =   6975
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Avvia Pagina Web"
      Height          =   255
      Left            =   3960
      TabIndex        =   1
      Top             =   120
      Width           =   2895
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   240
      TabIndex        =   0
      Text            =   "www.google.it"
      Top             =   120
      Width           =   3495
   End
End
Attribute VB_Name = "Form9"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "WebOpen|" & Text1.Text
End Sub
