VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "Comctl32.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "Comdlg32.ocx"
Begin VB.Form Form22 
   Caption         =   "Fire Upload / Download"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7410
   LinkTopic       =   "Form22"
   ScaleHeight     =   3090
   ScaleWidth      =   7410
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command6 
      Caption         =   "Imposta"
      Height          =   255
      Left            =   6000
      TabIndex        =   10
      Top             =   1800
      Width           =   1095
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Download"
      Height          =   255
      Left            =   3480
      TabIndex        =   9
      Top             =   2160
      Width           =   1695
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   720
      TabIndex        =   8
      Text            =   "Percorso Remoto"
      Top             =   1800
      Width           =   5055
   End
   Begin ComctlLib.ProgressBar ProgressBar1 
      Height          =   330
      Left            =   120
      TabIndex        =   3
      Top             =   1080
      Width           =   7170
      _ExtentX        =   12647
      _ExtentY        =   582
      _Version        =   327682
      BorderStyle     =   1
      Appearance      =   1
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Upload!!"
      Height          =   255
      Left            =   3360
      TabIndex        =   6
      Top             =   720
      Width           =   1815
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Connetti Upload"
      Height          =   255
      Left            =   1320
      TabIndex        =   5
      Top             =   720
      Width           =   1935
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   0
      Top             =   120
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Connetti Download"
      Height          =   255
      Left            =   1320
      TabIndex        =   2
      Top             =   2160
      Width           =   1935
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Scegli"
      Height          =   255
      Left            =   6000
      TabIndex        =   1
      Top             =   360
      Width           =   1095
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Index           =   0
      Left            =   6840
      Top             =   120
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   720
      TabIndex        =   0
      Text            =   "...."
      Top             =   360
      Width           =   5055
   End
   Begin ComctlLib.ProgressBar ProgressBar2 
      Height          =   330
      Left            =   120
      TabIndex        =   11
      Top             =   2520
      Width           =   7170
      _ExtentX        =   12647
      _ExtentY        =   582
      _Version        =   327682
      BorderStyle     =   1
      Appearance      =   1
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Scarica File"
      Height          =   195
      Left            =   3120
      TabIndex        =   7
      Top             =   1440
      Width           =   825
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Carica File"
      Height          =   195
      Left            =   3120
      TabIndex        =   4
      Top             =   120
      Width           =   735
   End
End
Attribute VB_Name = "Form22"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Load()
Winsock1(0).Close
Winsock1(0).LocalPort = 5005
Winsock1(0).Listen

End Sub

