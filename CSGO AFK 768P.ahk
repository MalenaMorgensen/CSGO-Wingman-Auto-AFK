; This script was created using Pulover's Macro Creator
; www.macrocreator.com

#NoEnv
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Window
SendMode Input
#SingleInstance Force
SetTitleMatchMode 2
#WinActivateForce
SetControlDelay 1
SetWinDelay 0
SetKeyDelay -1
SetMouseDelay -1
SetBatchLines -1


^,::
Macro1:
Loop
{
    WinActivate, Counter-Strike: Global Offensive
    Sleep, 333
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 31, 91, 38, 97, 0xFFFFFF, 0, Fast RGB  ; Play
    Sleep, 100
    If ErrorLevel = 0
    {
        Click, 33, 103 Left, 1
        Sleep, 10
    }
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 499, 130, 506, 139, 0xFFFFFF, 0, Fast RGB
    If ErrorLevel = 0
    	Click, %FoundX%, %FoundY% Left, 1  ; Mode
    Sleep, 100
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 486, 153, 497, 161, 0xFFFFFF, 0, Fast RGB  ; Go
    If ErrorLevel = 0
    {
        Click, 1138, 734 Left, 1
        Sleep, 10
    }
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 1022, 38, 1028, 45, 0xFFFFFF, 0, Fast RGB
    If ErrorLevel = 0
    	Click, %FoundX%, %FoundY% Left, 1  ; Reconnect
    Sleep, 100
    Click, 617, 675, 0
    Sleep, 10
    Click, 671, 390 Left, Down  ; Accept
    Sleep, 20
    Click, 671, 390 Left, Up  ; Accept
    Sleep, 4000
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 899, 428, 894, 432, 0xFFFFFF, 0, Fast RGB
    If ErrorLevel = 0
    	Click, %FoundX%, %FoundY% Left, 1  ; Matchmaking Failed
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 1320, 41, 1325, 48, 0x272727, 0, Fast RGB
    Sleep, 100
    If ErrorLevel = 0  ; Exit Explorer
    {
        Click, 1905, 15 Left, 1
        Sleep, 10
    }
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 21, 47, 26, 52, 0xFFFFFF, 0, Fast RGB
    If ErrorLevel = 0
    	Click, %FoundX%, %FoundY% Left, 1  ; Shift+Tab
    Sleep, 100
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 855, 443, 863, 452, 0x8BB2D5, 0, Fast RGB
    If ErrorLevel = 0
    	Click, %FoundX%, %FoundY% Left, 1  ; Player Reports
    Sleep, 100
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 914, 333, 920, 340, 0xE1C111, 0, Fast RGB  ; Cooldown Expired
    Sleep, 100
    If ErrorLevel = 0
    {
        Click, 859, 438 Left, 1
        Sleep, 10
    }
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 555, 317, 560, 323, 0x979797, 0, Fast RGB  ; Disconnected
    Sleep, 100
    If ErrorLevel = 0
    {
        Click, 893, 437 Left, 1
        Sleep, 10
    }
}
Return


^.::Pause
