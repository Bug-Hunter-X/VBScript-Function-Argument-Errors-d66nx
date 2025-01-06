Function calling with incorrect number of arguments or incorrect argument types in VBScript can lead to runtime errors that are not always easily debugged.  VBScript is relatively loose about type checking, so errors might only surface when the function is called with unexpected data.

Example:
```vbscript
Function MyFunc(arg1, arg2)
  ' ... function body ...
End Function

MyFunc 1, "string", 3 ' This will cause a type mismatch error, but it is not always immediately obvious why.
```