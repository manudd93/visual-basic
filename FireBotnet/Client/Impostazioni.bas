Attribute VB_Name = "Impostazioni"

Function Extract(Temp As String) As String
Dim num As Long
Dim Finale As String
Dim appoggio As String

For num = 1 To Len(Temp)
    appoggio = Mid(Temp, num, 1)
    
    If appoggio = "*" Then
       Exit For
    End If
    Finale = Mid(Temp, 1, num)
Next num
Extract = Finale
End Function

 
