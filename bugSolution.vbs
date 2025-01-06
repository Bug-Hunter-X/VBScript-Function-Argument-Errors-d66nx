Improved error handling and input validation are essential to prevent these issues.  Explicit type checking and a more robust function signature help make the code more predictable and less prone to runtime crashes.

```vbscript
Function MyFunc(arg1, arg2)
  If IsNumeric(arg1) And IsNumeric(arg2) Then
    ' ... function body ...
  Else
    Err.Raise 13, , "Type mismatch: arguments must be numeric." 
  End If
End Function

On Error GoTo errHandler

MyFunc 1, 2 ' This will work
MyFunc 1, "string" ' This will raise a custom error

Exit Function

errHandler:
  MsgBox "Error: " & Err.Number & " - " & Err.Description
End Function
```