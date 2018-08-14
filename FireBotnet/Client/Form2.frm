VERSION 5.00
Begin VB.Form Form2 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Cambia Porta"
   ClientHeight    =   1140
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   3855
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1140
   ScaleWidth      =   3855
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   1
      Text            =   "5000"
      Top             =   120
      Width           =   3615
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Cambia Porta"
      Height          =   255
      Left            =   360
      TabIndex        =   0
      Top             =   600
      Width           =   3135
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form1.Label2.Caption = "Porta Cambiata"
Me.Hide


End Sub

