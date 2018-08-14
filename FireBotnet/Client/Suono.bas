Attribute VB_Name = "Suono"
Const SND_ASYNC = &H1
Private Declare Function PlaySound Lib "winmm.dll" Alias "PlaySoundA" (ByVal _
lpszName As String, ByVal hModule As Long, ByVal dwFlags As Long) As Long
' Play a WAV file.
'
' FileName is a string containing the full path of the file.
' If SyncExec is True, the sound is played synchronously
' Returns True if no errors occurred
Function PlayWAV(FileName As String, Optional SyncExec As Boolean) As Boolean
If SyncExec Then
' play the file synchronously
PlayWAV = PlaySound(FileName, 0, 0)
Else
' play the file asynchronously
PlayWAV = PlaySound(FileName, 0, SND_ASYNC)
End If
End Function

