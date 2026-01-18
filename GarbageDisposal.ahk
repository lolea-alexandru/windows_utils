#Requires AutoHotkey v2.0

UserName := EnvGet("USERNAME")
NewWorkingDirPath := "C:\Users\" . UserName . "\Downloads"
SetWorkingDir NewWorkingDirPath

FileList := ""
Loop Files, A_WorkingDir "\*.*"
    FileList .= A_LoopFileName . "`n"

Loop Parse, FileList, "`n"
{
    ; Ignore blank item at the end of the list.
    if A_LoopField = ""
        continue


    FileToDeletePath := A_WorkingDir . "\" . A_LoopField

    FileDelete FileToDeletePath
}



