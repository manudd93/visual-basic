VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "ieframe.dll"
Object = "{2A6D8023-0587-4248-B0CB-11006E6C640B}#4.1#0"; "CoolXPButton.ocx"
Begin VB.Form Form2 
   BackColor       =   &H00080808&
   Caption         =   "Live Distrucion!!"
   ClientHeight    =   9255
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   15720
   LinkTopic       =   "Form2"
   ScaleHeight     =   9255
   ScaleWidth      =   15720
   StartUpPosition =   3  'Windows Default
   Begin CoolXPButton.xpButton xpButton3 
      Height          =   375
      Left            =   11160
      TabIndex        =   5
      Top             =   120
      Width           =   2535
      _ExtentX        =   4471
      _ExtentY        =   661
      Caption         =   "Proxy anonymouse.org"
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
   Begin CoolXPButton.xpButton xpButton2 
      Height          =   255
      Left            =   9720
      TabIndex        =   4
      Top             =   120
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   450
      Caption         =   "Naviga"
      CaptionAlign    =   7
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
      BackColor       =   &H00C00000&
      ForeColor       =   &H0000FF00&
      Height          =   285
      Left            =   5280
      TabIndex        =   2
      Text            =   "/"
      Top             =   120
      Width           =   4095
   End
   Begin CoolXPButton.xpButton xpButton1 
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   661
      Caption         =   "REFRESH"
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
   Begin SHDocVwCtl.WebBrowser WebBrowser1 
      Height          =   8535
      Left            =   120
      TabIndex        =   0
      Top             =   600
      Width           =   15495
      ExtentX         =   27331
      ExtentY         =   15055
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      NoWebView       =   0   'False
      HideFileNames   =   0   'False
      SingleClick     =   0   'False
      SingleSelection =   0   'False
      NoFolders       =   0   'False
      Transparent     =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   "http:///"
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackColor       =   &H00080808&
      Caption         =   "URL PATH:"
      ForeColor       =   &H0000FF00&
      Height          =   195
      Left            =   3960
      TabIndex        =   3
      Top             =   120
      Width           =   855
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
WebBrowser1.Navigate Form1.Text1.Text + Text1.Text
End Sub

Private Sub xpButton1_Click()
WebBrowser1.Refresh
End Sub

Private Sub xpButton2_Click()
WebBrowser1.Navigate Form1.Text1.Text + Text1.Text
End Sub

Private Sub xpButton3_Click()
WebBrowser1.Navigate "http://anonymouse.org/"
End Sub
