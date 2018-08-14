VERSION 5.00
Begin VB.Form Form6 
   BorderStyle     =   5  'Sizable ToolWindow
   Caption         =   "Alert Nuovo Utente Online!!"
   ClientHeight    =   3345
   ClientLeft      =   60
   ClientTop       =   330
   ClientWidth     =   6165
   LinkTopic       =   "Form6"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3345
   ScaleWidth      =   6165
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer5 
      Interval        =   200
      Left            =   120
      Top             =   2400
   End
   Begin VB.Timer Timer4 
      Interval        =   100
      Left            =   3360
      Top             =   2880
   End
   Begin VB.Timer Timer3 
      Interval        =   650
      Left            =   2760
      Top             =   2880
   End
   Begin VB.Timer Timer2 
      Interval        =   650
      Left            =   2160
      Top             =   2880
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   500
      Left            =   1560
      Top             =   2880
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      Caption         =   "IS ONLINE!!!"
      BeginProperty Font 
         Name            =   "System"
         Size            =   19.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   480
      Left            =   1680
      TabIndex        =   7
      Top             =   2160
      Width           =   2400
   End
   Begin VB.Label Label7 
      Caption         =   ". "
      BeginProperty Font 
         Name            =   "System"
         Size            =   19.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   480
      Left            =   2520
      TabIndex        =   6
      Top             =   1080
      Width           =   2415
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      Caption         =   "Computer:"
      BeginProperty Font 
         Name            =   "System"
         Size            =   19.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   480
      Left            =   360
      TabIndex        =   5
      Top             =   1080
      Width           =   1980
   End
   Begin VB.Label Label3 
      Caption         =   ". "
      BeginProperty Font 
         Name            =   "System"
         Size            =   19.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   480
      Left            =   1080
      TabIndex        =   4
      Top             =   600
      Width           =   3375
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "IP: "
      BeginProperty Font 
         Name            =   "System"
         Size            =   19.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   480
      Left            =   360
      TabIndex        =   3
      Top             =   600
      Width           =   630
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Nuovo Utente Online"
      BeginProperty Font 
         Name            =   "System"
         Size            =   19.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   480
      Left            =   960
      TabIndex        =   2
      Top             =   0
      Width           =   4020
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "Nome:"
      BeginProperty Font 
         Name            =   "System"
         Size            =   19.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   480
      Left            =   360
      TabIndex        =   1
      Top             =   1560
      Width           =   1260
   End
   Begin VB.Label Label5 
      Caption         =   ". "
      BeginProperty Font 
         Name            =   "System"
         Size            =   19.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   480
      Left            =   1680
      TabIndex        =   0
      Top             =   1560
      Width           =   2415
   End
End
Attribute VB_Name = "Form6"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim DirectionIsUp As Boolean ' Up is True, Down is False


Private Declare Function SetWindowPos Lib "user32.dll" (ByVal hwnd As Long, _
    ByVal hWndInsertAfter As Long, ByVal X As Long, ByVal Y As Long, _
    ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Private Const HWND_TOP As Long = 0
Private Const HWND_TOPMOST As Long = -1
Private Const HWND_NOTOPMOST As Long = -2
Private Const SWP_NOMOVE As Long = &H2
Private Const SWP_NOSIZE  As Long = &H1
Private Sub Form_Load()
SetWindowPos Me.hwnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE + SWP_NOSIZE
  'Move it below the visible screen (and a little just in case)
  Me.Top = Screen.Height + 10
  Me.Left = Screen.Width - (Me.Width + 100)
  
  DirectionIsUp = True
Timer1.Enabled = True
Label3.Caption = Form1.Winsock1(Index).RemoteHostIP
Label5.Caption = Form1.Label17.Caption
Label7.Caption = Form1.Label18.Caption
DoEvents
PlayWAV App.Path & "\nokia.wav"

End Sub

Private Sub Timer1_Timer()
'Move at 10 millisecond intervals (100 times a second, 3 times what the eye can see)
  Timer1.Interval = 10
  
  ' If it's moving up
  If DirectionIsUp Then
    
    'Move it up 50 twips every 10 milliseconds
    Me.Top = Me.Top - 100
    
    'Move until the whole form is shown (minus 10 twips to make sure it still touches the bottom of the screen)
    If (Me.Top <= Screen.Height - (Me.Height - 100)) Then
      
      ' This specifies how long it will stay shown (Unmoving)
      Timer1.Interval = 3000
      
      ' We're gonna move it down next...
      DirectionIsUp = False
    End If
  
  Else
    'Move it down 50 twips every 10 milliseconds
    Me.Top = Me.Top + 100
    
    'Move until the whole form is shown (plus 10 twips to make sure it's hidden)
    If Me.Top >= Screen.Height + 100 Then
      Timer1.Enabled = False
      Unload Me
    End If
  End If
End Sub

Private Sub Timer2_Timer()
Label1.BackColor = vbRed
Me.BackColor = vbBlue
Label2.BackColor = vbRed
Label3.BackColor = &HC000C0
Label4.BackColor = vbBlue
Label5.BackColor = vbGreen
Label6.BackColor = vbRed
Label7.BackColor = &H800000
End Sub

Private Sub Timer3_Timer()
Label1.BackColor = vbBlue
Me.BackColor = vbRed
Label2.BackColor = vbBlue
Label3.BackColor = &H8000000D
Label4.BackColor = vbBlue
Label5.BackColor = vbGreen
Label6.BackColor = vbRed
Label7.BackColor = &H800000
End Sub




