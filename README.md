# Mini App Launcher (AHK v2)

Mini AutoHotkey v2 script to quickly launch a predefined list of applications using `Ctrl + Numpad5`.

> **Warning**  
> When compiling the script, the value of `A_ProgramFiles` may differ depending on the compilation mode:  
> 
> - **32-bit compilation** → may resolve to `C:\Program Files (x86)`  
> - **64-bit compilation** → resolves to `C:\Program Files`  
> 
> ✅ To ensure compatibility with 64-bit applications, either use `A_ProgramFiles64` in your script, or compile with the 64-bit base.