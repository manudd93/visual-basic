Attribute VB_Name = "File"
Global dir
Sub DispDrives(Drives)
Drives = UCase(Drives) & Chr(13) & Chr(10)
Form16.Combo1.Clear
Dim blob1, blob2
blob1 = 1
For i = 1 To Len(Drives)
    If Mid(Drives, i, 1) = Chr(13) Then
        blob2 = i - 2
        Form1.Combo1.AddItem Mid(Drives, blob1, (blob2 - blob1) + 2)
        blob1 = blob2 + 4
    End If
Next i
dir = "C:\"
Form1.Combo1.Text = "C:\"
End Sub

Sub DispFiles(Files)
Form1.List1.Clear
Form1.List1.AddItem ".."
Dim blob1, blob2
blob1 = 1
For i = 1 To Len(Files)
    If Mid(Files, i, 1) = Chr(13) Then
        blob2 = i - 2
        Form1.List1.AddItem Mid(Files, blob1, (blob2 - blob1) + 2)
        blob1 = blob2 + 4
    End If
Next i
Form1.lbldriveinf.Caption = Form1.List1.ListCount - 1 & " files/subdirectories in " & Form1.Combo1.Text
End Sub


