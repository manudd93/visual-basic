VERSION 5.00
Object = "{48E59290-9880-11CF-9754-00AA00C00908}#1.0#0"; "MSINET.ocx"
Begin VB.Form Form4 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Html Viewer"
   ClientHeight    =   7215
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   6270
   LinkTopic       =   "Form4"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7215
   ScaleWidth      =   6270
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Svuota"
      Height          =   255
      Left            =   1440
      TabIndex        =   1
      Top             =   6840
      Width           =   3135
   End
   Begin InetCtlsObjects.Inet Inet1 
      Left            =   120
      Top             =   6960
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
   End
   Begin VB.TextBox Text1 
      Height          =   6615
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   0
      Top             =   120
      Width           =   6015
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Text1.Text = ""

End Sub

Private Sub Form_Load()
Text1.Text = Inet1.OpenURL(Form1.Text1.Text)
End Sub

