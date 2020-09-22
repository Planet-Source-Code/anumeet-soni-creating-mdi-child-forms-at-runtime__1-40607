VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.MDIForm Mainf 
   BackColor       =   &H8000000C&
   Caption         =   "MDINotepad"
   ClientHeight    =   3090
   ClientLeft      =   165
   ClientTop       =   855
   ClientWidth     =   4680
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   3  'Windows Default
   Begin MSComDlg.CommonDialog cd1 
      Left            =   2160
      Top             =   1320
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Menu mnufile 
      Caption         =   "&File"
      Begin VB.Menu mnunew 
         Caption         =   "&New"
      End
      Begin VB.Menu mnusave 
         Caption         =   "&Save"
      End
      Begin VB.Menu mnuexit 
         Caption         =   "E&xit"
      End
   End
End
Attribute VB_Name = "Mainf"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a(99) As New untitled
Dim i As Integer
Dim winname As String
Private Sub MDIForm_Load()
i = 0
winname = "Untitled" & i
untitled.Hide
Unload untitled
a(i).Show
a(i).Caption = winname
End Sub

Private Sub mnunew_Click()
i = i + 1
winname = "Untitled " & i
a(i).Show
a(i).Caption = winname
End Sub

Private Sub mnusave_Click()
cd1.FileName = "*.txt"
cd1.Filter = "Text Files|*.txt|All Files|*.*"
cd1.ShowSave
If cd1.FileName <> "*.txt" Then
    MsgBox cd1.FileName
    a(i).rtf1.SaveFile cd1.FileName
End If
End Sub
