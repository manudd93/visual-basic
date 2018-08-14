VERSION 5.00
Begin VB.Form Form2 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Chat Privata"
   ClientHeight    =   5685
   ClientLeft      =   6705
   ClientTop       =   3030
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5685
   ScaleWidth      =   4680
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton Command3 
      Caption         =   "Banna Utente"
      Height          =   255
      Left            =   2880
      TabIndex        =   6
      Top             =   360
      Width           =   1575
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Caccia Utente"
      Height          =   255
      Left            =   1200
      TabIndex        =   5
      Top             =   360
      Width           =   1575
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   4
      Top             =   4560
      Width           =   4335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Invia"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   5040
      Width           =   1215
   End
   Begin VB.ListBox List1 
      Height          =   3570
      Left            =   120
      TabIndex        =   2
      Top             =   840
      Width           =   4335
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Disconneso"
      Height          =   195
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   840
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Chat Privata"
      Height          =   195
      Left            =   1440
      TabIndex        =   0
      Top             =   0
      Width           =   870
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim numero As Integer

Private Sub Command1_Click()
Form1.Winsock1(List.ListIndex).SendData "[Chat Privata Admin] " + Text1.Text
List1.AddItem Text1.Text
Text1.Text = ""
List2.ListIndex = List2.NewIndex
End Sub

Private Sub Command2_Click()
Form1.Winsock1(numero).SendData "Cacciato"

End Sub

Private Sub Command3_Click()
Form3.List1.AddItem Form1.Winsock1(Form1.Label8.Caption).RemoteHostIP
Form1.Winsock1(Form1.Label8.Caption).SendData "Sei Stato Bannato Dall'Amministratore!!"
DoEvents
Form1.Winsock1(Form1.Label8.Caption).Close
End Sub

Private Sub Form_Load()
numero = Form1.Label8.Caption
Label2.Caption = Form1.Winsock1(numero).RemoteHostIP

End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
Form1.Winsock1(Form1.Label8.Caption).SendData "[Chat Privata Admin] " + Text1.Text
List1.AddItem "IO: " + Text1.Text
Text1.Text = ""
End If

End Sub
