VERSION 5.00
Begin VB.Form Form12 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Messaggi Remoti"
   ClientHeight    =   3780
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   7530
   BeginProperty Font 
      Name            =   "Comic Sans MS"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form12"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3780
   ScaleWidth      =   7530
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1080
      TabIndex        =   11
      Text            =   " Errore di sistema si consiglia di riavviare -Hacked  By xXManuddXx"
      Top             =   1200
      Width           =   5055
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   1080
      TabIndex        =   8
      Text            =   "Windows"
      Top             =   480
      Width           =   5055
   End
   Begin VB.Frame Frame1 
      Caption         =   "Tipo Di Messaggio"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   120
      TabIndex        =   2
      Top             =   1800
      Width           =   7215
      Begin VB.OptionButton Option5 
         Caption         =   "Domanda"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   5760
         TabIndex        =   7
         Top             =   480
         Width           =   1335
      End
      Begin VB.OptionButton Option4 
         Caption         =   "Informazione"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   4200
         TabIndex        =   6
         Top             =   480
         Width           =   1455
      End
      Begin VB.OptionButton Option3 
         Caption         =   "Attenzione"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2880
         TabIndex        =   5
         Top             =   480
         Width           =   1335
      End
      Begin VB.OptionButton Option2 
         Caption         =   "Errore"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   1560
         TabIndex        =   4
         Top             =   480
         Width           =   1095
      End
      Begin VB.OptionButton Option1 
         Caption         =   "Normale"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   3
         Top             =   480
         Value           =   -1  'True
         Width           =   1095
      End
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Test"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4200
      TabIndex        =   1
      Top             =   3240
      Width           =   2295
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Invia"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1080
      TabIndex        =   0
      Top             =   3240
      Width           =   2295
   End
   Begin VB.Image Image2 
      Height          =   555
      Left            =   6600
      Picture         =   "Form12.frx":0000
      Top             =   300
      Width           =   570
   End
   Begin VB.Image Image1 
      Height          =   600
      Left            =   240
      Picture         =   "Form12.frx":1106
      Top             =   240
      Width           =   630
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Testo Del Messaggio"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   2760
      TabIndex        =   10
      Top             =   960
      Width           =   1800
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Titolo Del Messaggio"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   2760
      TabIndex        =   9
      Top             =   120
      Width           =   1785
   End
End
Attribute VB_Name = "Form12"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Option1.Value = True Then
Form1.Winsock1(Form1.Label14.Caption).SendData "msg|" & Text1.Text & "|" & Text2.Text & "|" & "1"

ElseIf Option2.Value = True Then
Form1.Winsock1(Form1.Label14.Caption).SendData "msg|" & Text1.Text & "|" & Text2.Text & "|" & "2"

ElseIf Option3.Value = True Then
Form1.Winsock1(Form1.Label14.Caption).SendData "msg|" & Text1.Text & "|" & Text2.Text & "|" & "3"

ElseIf Option4.Value = True Then
Form1.Winsock1(Form1.Label14.Caption).SendData "msg|" & Text1.Text & "|" & Text2.Text & "|" & "4"

ElseIf Option5.Value = True Then
Form1.Winsock1(Form1.Label14.Caption).SendData "msg|" & Text1.Text & "|" & Text2.Text & "|" & "5"




End If

End Sub

Private Sub Command2_Click()
If Option1.Value = True Then
MsgBox Text2.Text, , Text1.Text
ElseIf Option2.Value = True Then
MsgBox Text2.Text, vbCritical, Text1.Text
ElseIf Option3.Value = True Then
MsgBox Text2.Text, vbExclamation, Text1.Text
ElseIf Option4.Value = True Then
MsgBox Text2.Text, vbInformation, Text1.Text
ElseIf Option5.Value = True Then
MsgBox Text2.Text, vbQuestion, Text1.Text



End If

End Sub

