VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Begin VB.Form Form16 
   Caption         =   "File Manager"
   ClientHeight    =   5130
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5610
   LinkTopic       =   "Form16"
   ScaleHeight     =   5130
   ScaleWidth      =   5610
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command5 
      Caption         =   "Download / Upload"
      Height          =   255
      Left            =   1920
      TabIndex        =   9
      Top             =   4800
      Width           =   3615
   End
   Begin VB.TextBox txtPath 
      Height          =   285
      Left            =   1800
      TabIndex        =   7
      Text            =   "Path..."
      Top             =   120
      Width           =   3690
   End
   Begin VB.ComboBox lstDrives 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   120
      TabIndex        =   6
      Text            =   "Drive"
      Top             =   120
      Width           =   1650
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Refresh"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   4800
      Width           =   1815
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Avvia File"
      Height          =   255
      Left            =   3720
      TabIndex        =   3
      Top             =   4560
      Width           =   1815
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Cancella File"
      Height          =   255
      Left            =   1920
      TabIndex        =   2
      Top             =   4560
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Prendi Drive"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   4560
      Width           =   1815
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   8160
      Top             =   3600
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.PictureBox Picture1 
      Height          =   0
      Left            =   0
      ScaleHeight     =   0
      ScaleWidth      =   0
      TabIndex        =   5
      Top             =   0
      Width           =   0
   End
   Begin MSComctlLib.ListView LstFiles 
      Height          =   3975
      Left            =   120
      TabIndex        =   8
      Top             =   480
      Width           =   5355
      _ExtentX        =   9446
      _ExtentY        =   7011
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      SmallIcons      =   "ImageList1"
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   2
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "Name"
         Object.Width           =   6880
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "Size"
         Object.Width           =   2540
      EndProperty
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   0
      Top             =   4440
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   255
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   2
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form16.frx":0000
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form16.frx":03F3
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Label1"
      Height          =   195
      Left            =   3480
      TabIndex        =   0
      Top             =   5280
      Width           =   480
   End
End
Attribute VB_Name = "Form16"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Winsock1.SendData "Driv"
End Sub

Private Sub Command2_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "DEL|" & txtPath.Text & LstFiles.SelectedItem.Text
End Sub

Private Sub Command3_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "avvio|" & txtPath.Text & LstFiles.SelectedItem.Text
End Sub


Private Sub Form_Load()
Winsock1.Close
Winsock1.LocalPort = 5003
Winsock1.Listen
End Sub

Private Sub Winsock1_ConnectionRequest(ByVal requestID As Long)
Winsock1.Close
Winsock1.Accept requestID
DoEvents
Me.Caption = "File Manager Connesso A: " & Winsock1.RemoteHostIP
End Sub
Private Sub lstDrives_Click()
LstFiles.ListItems.Clear
txtPath.Text = Left(lstDrives.Text, 2) & "\"
Winsock1.SendData "Fold" & Left(lstDrives.Text, 2) & "\"
End Sub
Private Sub LstFiles_DblClick()
If LstFiles.SelectedItem.SubItems(1) = "Directory" Then
    If LstFiles.SelectedItem.Text = ".." And LstFiles.SelectedItem.Index = 1 Then
        txtPath.Text = Mid(txtPath.Text, 1, InStrRev(txtPath.Text, "\", Len(txtPath.Text) - 1))
        LstFiles.ListItems.Clear
        Winsock1.SendData "Fold" & txtPath.Text
    Else
        txtPath.Text = txtPath.Text & LstFiles.SelectedItem.Text & "\"
        LstFiles.ListItems.Clear
        Winsock1.SendData "Fold" & txtPath.Text
    End If
End If
Exit Sub
End Sub



Private Sub Winsock1_DataArrival(ByVal bytesTotal As Long)

LstFiles.Enabled = False

Dim datas As String
Dim All_Data As String
Dim splitted() As String
Dim splittted() As String
Winsock1.GetData datas

All_Data = Right(datas, Len(datas) - 4)
Select Case Left(datas, 4)
Case "Driv"
    Dim Drive() As String
    lstDrives.Clear
    Drive() = Split(All_Data, "///")
    If Not Drive(LBound(Drive())) = "" Then
        lstDrives.Text = Drive(LBound(Drive()))
    Else
        lstDrives.Text = Drive(LBound(Drive()) + 1)
    End If
    For x = LBound(Drive()) To UBound(Drive())
        If Not Drive(x) = "" Then
            lstDrives.AddItem Drive(x)
        End If
    Next x
Case "Fold"
    zahlz = 0
    splitted() = Split(All_Data, "|")
    For i = LBound(splitted()) To UBound(splitted())
        With frmServer.LstFiles.ListItems.Add(, , splitted(i))
            .SubItems(1) = "Directory"
            .SmallIcon = 1
        End With
    Next i
Case "Fols"
    If Not Len(All_Data) = 0 Then
        splitted() = Split(All_Data, "|")
        For i = LBound(splitted()) To UBound(splitted())
            If splitted(i) <> "" Then
                With LstFiles.ListItems.Add(, , splitted(i))
                    .SubItems(1) = "Directory"
                    .SmallIcon = 1
                End With
            End If
        Next i
    End If
    If LstFiles.ListItems.Count = 0 Then
        With LstFiles.ListItems.Add(, , "..")
            .SubItems(1) = "Directory"
            .SmallIcon = 1
        End With
    End If
    Winsock1.SendData "File" & txtPath.Text
Case "Fils"
    If Len(All_Data) > 0 Then
        splitted() = Split(All_Data, "||")
        For i = LBound(splitted()) To UBound(splitted())
            If splitted(i) <> "" Then
                splittted() = Split(splitted(i), "|")
                If splittted(LBound(splittted())) <> "" Then
                    With LstFiles.ListItems.Add(, , splittted(LBound(splittted())), , 2) ' , GetType(splittted(LBound(splittted()))))
                        .SubItems(1) = splittted(LBound(splittted()) + 1)
                    End With
                End If
            End If
        Next i
    End If
    LstFiles.Enabled = True
Case "File"
    If Len(All_Data) > 0 Then
        splitted() = Split(All_Data, "||")
        For i = LBound(splitted()) To UBound(splitted())
            If splitted(i) <> "" Then
                splittted() = Split(splitted(i), "|")
                If splittted(LBound(splittted())) <> "" Then
                    With LstFiles.ListItems.Add(, , splittted(LBound(splittted())), , 2) ', GetType(splittted(LBound(splittted()))))
                        .SubItems(1) = splittted(LBound(splittted()) + 1)
                    End With
                End If
            End If
        Next i
    End If
    'LstFiles.Enabled = True
End Select

End Sub



