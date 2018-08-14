VERSION 5.00
Begin VB.Form Form4 
   Appearance      =   0  'Flat
   BackColor       =   &H00000000&
   BorderStyle     =   4  'Fixed ToolWindow
   ClientHeight    =   705
   ClientLeft      =   15
   ClientTop       =   15
   ClientWidth     =   900
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   FillStyle       =   0  'Solid
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form4"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   705
   ScaleWidth      =   900
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox Picture1 
      AutoRedraw      =   -1  'True
      BorderStyle     =   0  'None
      FillColor       =   &H8000000F&
      Height          =   375
      Left            =   0
      ScaleHeight     =   375
      ScaleWidth      =   495
      TabIndex        =   0
      Top             =   0
      Width           =   495
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Const HWND_TOPMOST = -1
Const HWND_NOTOPMOST = -2
Const SWP_NOSIZE = &H1
Const SWP_NOMOVE = &H2
Const SWP_NOACTIVATE = &H10
Const SWP_SHOWWINDOW = &H40
Private Declare Sub SetWindowPos Lib "user32" (ByVal hWnd As Long, ByVal hWndInsertAfter As Long, _
ByVal x As Long, ByVal y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long)

Private Sub Form_Initialize()
Dim M3l1ZmczODk3eWY3OGZ0OGZnOHljZjg3Z2Y As String

SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOACTIVATE _
Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE
End Sub

Private Sub Form_Load()
With Form4
.Top = 0
.Left = 0
.Width = Screen.Width
.Height = Screen.Height
.Picture1.Height = Screen.Height
.Picture1.Width = Screen.Width
End With
Dim MTJ3ZXM3NnRyOHk5aGJo As Object
End Sub

Private Sub Picture1_Click()
Unload Me 'close if user clicks on captured screen
Me.Cls
End Sub
