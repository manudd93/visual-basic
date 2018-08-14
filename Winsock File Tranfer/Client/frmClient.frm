VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "Comdlg32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "Mscomctl.ocx"
Begin VB.Form frmClient 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Client - Idle"
   ClientHeight    =   1350
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   3825
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1350
   ScaleWidth      =   3825
   StartUpPosition =   3  'Windows Default
   Begin MSComctlLib.ProgressBar PB 
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   1080
      Width           =   3615
      _ExtentX        =   6376
      _ExtentY        =   450
      _Version        =   393216
      Appearance      =   1
   End
   Begin VB.CommandButton Command2 
      Caption         =   "invia file"
      Height          =   375
      Left            =   1560
      TabIndex        =   3
      Top             =   600
      Width           =   1215
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   1320
      Top             =   0
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      RemotePort      =   5867
   End
   Begin MSComDlg.CommonDialog dlg 
      Left            =   1800
      Top             =   0
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton Command1 
      Caption         =   "connetti"
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   600
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   600
      TabIndex        =   0
      Top             =   240
      Width           =   3015
   End
   Begin VB.Label Label1 
      Caption         =   "IP:"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   240
      Width           =   375
   End
End
Attribute VB_Name = "frmClient"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Const ChunkSize As Integer = 500 'between 1 and 1024
Private Const SPLITTER As String = "{SPL}" 'make sure this is a very unique string
Dim FilePath As String, BinChunk As String
'lui invia il file
Private Sub Command1_Click()
Winsock1.Close
Winsock1.RemoteHost = Text1.Text
Winsock1.Connect
End Sub

Private Sub Command2_Click()
Command2.Enabled = False
Close #1
dlg.Filter = "All Files | *.*"
dlg.ShowOpen
FilePath = dlg.FileName

Open FilePath For Binary As #1
BinChunk = Space(ChunkSize)
PB.Max = LOF(1)

Winsock1.SendData "READY" & SPLITTER & dlg.FileTitle & SPLITTER & LOF(1)
End Sub

Private Sub Form_Load()

End Sub

Private Sub Winsock1_Close()
frmClient.Caption = "Client - Disconnected"
Command1.Enabled = True
Command2.Enabled = True
End Sub

Private Sub Winsock1_Connect()
frmClient.Caption = "Client - Connected"
Command1.Enabled = False
End Sub

Private Sub Winsock1_DataArrival(ByVal bytesTotal As Long)
Dim Temp As String, Temp2() As String

Winsock1.GetData Temp
Temp2 = Split(Temp, SPLITTER)

Select Case Temp2(0)
Case "BiteMe"
 If Not EOF(1) Then
 Get #1, , BinChunk
 Winsock1.SendData "BYT" & SPLITTER & BinChunk
 On Error Resume Next
 PB.Value = PB.Value + Len(BinChunk)
 Else
 Winsock1.SendData "DONE"
 End If
 Case "thankya"
 Close #1
 PB.Value = PB.Max
 Command2.Enabled = True
 MsgBox "Transfer Complete"
End Select
End Sub
