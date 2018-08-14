VERSION 5.00
Object = "{DA729E34-689F-49EA-A856-B57046630B73}#1.0#0"; "Progressbar-xp.ocx"
Begin VB.Form Form6 
   BorderStyle     =   0  'None
   Caption         =   "Form6"
   ClientHeight    =   5910
   ClientLeft      =   4515
   ClientTop       =   3240
   ClientWidth     =   11355
   LinkTopic       =   "Form6"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5910
   ScaleWidth      =   11355
   ShowInTaskbar   =   0   'False
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   480
      Top             =   4080
   End
   Begin Proyecto2.XP_ProgressBar ProgressBar1 
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   5160
      Width           =   11055
      _ExtentX        =   19500
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
      Color           =   255
      Scrolling       =   9
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "%"
      BeginProperty Font 
         Name            =   "Computerfont"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   1215
      Left            =   6120
      TabIndex        =   3
      Top             =   3600
      Width           =   690
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Computerfont"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   1215
      Left            =   4920
      TabIndex        =   2
      Top             =   3600
      Width           =   525
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Loading..."
      BeginProperty Font 
         Name            =   "Computerfont"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   1215
      Left            =   3960
      TabIndex        =   1
      Top             =   2640
      Width           =   3795
   End
   Begin VB.Image Image2 
      Height          =   1245
      Left            =   1200
      Picture         =   "Form6.frx":0000
      Top             =   480
      Width           =   8940
   End
   Begin VB.Image Image1 
      Height          =   5895
      Left            =   0
      Picture         =   "Form6.frx":95D3
      Stretch         =   -1  'True
      Top             =   0
      Width           =   11415
   End
End
Attribute VB_Name = "Form6"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False





'if you want, then use lresult=removefontresource(etc,etc) when unloading program...i didn't even bother...
Private Sub Form_Load()
Dim lResult As Long

lResult = AddFontResource(App.Path & "\computerfont.ttf")
'font1.otf was my name for my font, you can name it whatever YOUR font name is, obviously. if you will require different fonts, you can just repeat the step above, as I did:
lResult = AddFontResource(App.Path & "\computerfont.ttf")
lResult = AddFontResource(App.Path & "\computerfont.ttf")
Timer1.Enabled = True
End Sub



Private Sub Timer1_Timer()
ProgressBar1.Value = ProgressBar1.Value + 1
If ProgressBar1.Value = 100 Then
Form1.Show
Timer1.Enabled = False
End If
Label2.Caption = ProgressBar1.Value
End Sub







