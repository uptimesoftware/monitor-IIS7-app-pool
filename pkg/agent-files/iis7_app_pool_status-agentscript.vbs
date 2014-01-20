Option Explicit

On Error Resume Next

' Declare all variables
Dim strAppPool
Dim strMonitorStatus
Dim strName
Dim strState
Dim objWebAdmin
Dim objAppPool
Dim exitVal

' Set all defaults
strAppPool = Wscript.Arguments.Unnamed.Item(0)

strMonitorStatus = "Error"
strName = "output Could not find App Pool '" & strAppPool & "'"
strState= "UNKNOWN"

' Connect to WMI provider
Set objWebAdmin = GetObject("winmgmts:root\WebAdministration")

' search the AppPool passed as argument in the list of application pools
Set objAppPool = objWebAdmin.Get("ApplicationPool.Name='" & strAppPool & "'")

strName = objAppPool.Name

Select Case objAppPool.GetState
	Case 0
		strState = "starting"
		strMonitorStatus = "WARNING"
		exitVal = 1
	Case 1
		strState = "started"
		strMonitorStatus = "OK"
		exitVal = 0
	Case 2
		strState = "stopping"
		strMonitorStatus = "WARNING"
		exitVal = 1
	Case 3
		strState = "stopped"
		strMonitorStatus = "CRITICAL"
		exitVal = 2
	Case 4
		strState = "unknown"
		strMonitorStatus = "UNKNOWN"
		exitVal = 3
	Case Else
		strState = "undefined value"
		strMonitorStatus = "UNKNOWN"
		exitVal = 3
End Select

' Error catching
'If Err Then
'	WScript.Echo "Error # " & Err.Number & ": " & Err.Description
'	WScript.Quit 1
'End If

' Output
Wscript.Echo "output " & strName & " (" & strMonitorStatus & "): " & strState
WScript.Quit(exitVal)
