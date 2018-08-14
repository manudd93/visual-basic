Attribute VB_Name = "Module3"
Public Function GetFWAV() As String
    On Error Resume Next
    Dim colItems As Object
    Dim objItem As Object
    Dim objWMIService As Object
    Set objWMIService = GetObject("winmgmts:\\.\root\SecurityCenter")
    
    Set colItems = objWMIService.ExecQuery("Select * from FirewallProduct")
    
    Dim tmp As String, endt As String
    tmp = "-"
    For Each objItem In colItems
        tmp = objItem.CompanyName & " " & objItem.DisplayName & " (" & objItem.versionnumber & ")"
    Next
    endt = tmp
    tmp = "-"
    Set colItems = objWMIService.ExecQuery("Select * from AntiVirusProduct")

    For Each objItem In colItems
       tmp = objItem.CompanyName & " " & objItem.DisplayName & " (" & objItem.versionnumber & ")"
    Next
    GetFWAV = endt & "|" & tmp
End Function

