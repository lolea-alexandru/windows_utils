#Requires AutoHotkey v2.0

UserName := EnvGet("USERNAME")
DownloadsWorkingDirPath := "C:\Users\" . UserName . "\Downloads"
ScreenshotsWorkingDirPath := "C:\Users\" . UserName . "\Pictures\Screenshots"

DeleteFolderContent(Folder) {
    SetWorkingDir Folder
    
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
}

; Delete files
DeleteFolderContent(DownloadsWorkingDirPath)
DeleteFolderContent(ScreenshotsWorkingDirPath)

; Empty recycle bin
FileRecycleEmpty "C:\"




