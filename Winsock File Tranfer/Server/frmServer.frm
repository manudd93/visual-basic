VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MsComCtl.ocx"
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "ComDlg32.OCX"
Begin VB.Form frmServer 
   Caption         =   "Server - Idle"
   ClientHeight    =   1035
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4095
   LinkTopic       =   "Form1"
   ScaleHeight     =   1035
   ScaleWidth      =   4095
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Listen"
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   240
      Width           =   1335
   End
   Begin MSComctlLib.ProgressBar PB 
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   720
      Width           =   3855
      _ExtentX        =   6800
      _ExtentY        =   450
      _Version        =   393216
      Appearance      =   1
   End
   Begin MSComDlg.CommonDialog dlg 
      Left            =   2640
      Top             =   120
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   2040
      Top             =   120
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      LocalPort       =   5867
   End
End
Attribute VB_Name = "frmServer"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Const SPLITTER As String = "{SPL}"

Private Sub Command1_Click()
If Command1.Caption = "Listen" Then
    Winsock1.Close
    Winsock1.Listen
    frmServer.Caption = "Server - Listening"
    Command1.Caption = "Stop Listening"
Else
    Winsock1.Close
    frmServer.Caption = "Server - Disconnected"
    Command1.Caption = "Listen"
End If
End Sub

Private Sub Winsock1_Close()
frmServer.Caption = "Server - Disconnected"
Command1.Caption = "Listen"
End Sub

Private Sub Winsock1_ConnectionRequest(ByVal requestID As Long)
Winsock1.Close
Winsock1.Accept requestID
frmServer.Caption = "Server - Connected"
End Sub

Private Sub Winsock1_DataArrival(ByVal bytesTotal As Long)
Dim Temp As String
Dim Temp2() As String

Winsock1.GetData Temp
Temp2 = Split(Temp, SPLITTER)

Select Case Temp2(0)
    Case "READY"
    Dim Extension As String
    Extension = Split(Temp2(1), ".")(UBound(Split(Temp2(1), ".")))
    dlg.Filter = "FILETYPE " & Extension & " | *." & Extension
    dlg.ShowOpen
    
    Open dlg.FileName For Binary As #1
    Winsock1.SendData "BiteMe" & SPLITTER & LOF(1)
    PB.Max = Temp2(2)
    
    Case "BYT"
    Put #1, , Temp2(1)
    On Error Resume Next
    PB.Value = PB.Value + Len(Temp2(1))
    Winsock1.SendData "BiteMe"
    
    Case "DONE"
    Close #1
    Winsock1.SendData "thankya"
    PB.Value = PB.Max
End Select
End Sub
