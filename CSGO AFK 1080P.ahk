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
    PixelSearch, FoundX, FoundY, 44, 128, 53, 136, 0xFFFFFF, 0, Fast RGB  ; Play
    Sleep, 100
    If ErrorLevel = 0
    {
        Click, 46, 145 Left, 1
        Sleep, 10
    }
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 269, 194, 244, 293, 0xFFFFFF, 0, Fast RGB
    If ErrorLevel = 0
    	Click, %FoundX%, %FoundY% Left, 1  ; Mode
    Sleep, 100
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 314, 220, 314, 220, 0xFFFFFF, 0, Fast RGB  ; Go
    If ErrorLevel = 0
    {
        Click, 1600, 1033 Left, 1
        Sleep, 10
    }
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 144, 53, 1446, 62, 0xFFFFFF, 0, Fast RGB
    If ErrorLevel = 0
    	Click, %FoundX%, %FoundY% Left, 1  ; Reconnect
    Sleep, 100
    Click, 868, 949, 0
    Sleep, 10
    Click, 944, 648 Left, Down  ; Accept
    Sleep, 20
    Click, 944, 648 Left, Up  ; Accept
    Sleep, 4000
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 1250, 602, 1258, 608, 0xFFFFFF, 0, Fast RGB
    If ErrorLevel = 0
    	Click, %FoundX%, %FoundY% Left, 1  ; Matchmaking Failed
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 1854, 58, 1862, 67, 0x272727, 0, Fast RGB
    Sleep, 100
    If ErrorLevel = 0  ; Exit Explorer
    {
        Click, 1904, 16 Left, 1
        Sleep, 10
    }
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 29, 66, 37, 73, 0xFFFFFF, 0, Fast RGB
    If ErrorLevel = 0
    	Click, %FoundX%, %FoundY% Left, 1  ; Shift+Tab
    Sleep, 100
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 1201, 623, 1214, 636, 0x8BB2D5, 0, Fast RGB
    If ErrorLevel = 0
    	Click, %FoundX%, %FoundY% Left, 1  ; Player Reports
    Sleep, 100
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 1286, 469, 1294, 478, 0xE1C111, 0, Fast RGB  ; Cooldown Expired
    Sleep, 100
    If ErrorLevel = 0
    {
        Click, 1208, 616 Left, 1
        Sleep, 10
    }
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 780, 446, 788, 454, 0x979797, 0, Fast RGB  ; Disconnected
    Sleep, 100
    If ErrorLevel = 0
    {
        Click, 1256, 616 Left, 1
        Sleep, 10
    }
}
Return


^.::Pause
