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
    PixelSearch, FoundX, FoundY, 37, 107, 44, 113, 0xFFFFFF, 0, Fast RGB  ; Play
    Sleep, 100
    If ErrorLevel = 0
    {
        Click, 38, 121 Left, 1
        Sleep, 10
    }
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 244, 162, 244, 162, 0xFFFFFF, 0, Fast RGB
    If ErrorLevel = 0
    	Click, %FoundX%, %FoundY% Left, 1  ; Mode
    Sleep, 100
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 262, 183, 262, 183, 0xFFFFFF, 0, Fast RGB  ; Go
    If ErrorLevel = 0
    {
        Click, 1333, 861 Left, 1
        Sleep, 10
    }
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 120, 44, 1205, 52, 0xFFFFFF, 0, Fast RGB
    If ErrorLevel = 0
    	Click, %FoundX%, %FoundY% Left, 1  ; Reconnect
    Sleep, 100
    Click, 723, 791, 0
    Sleep, 10
    Click, 787, 540 Left, Down  ; Accept
    Sleep, 20
    Click, 787, 540 Left, Up  ; Accept
    Sleep, 4000
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 1042, 502, 1048, 507, 0xFFFFFF, 0, Fast RGB
    If ErrorLevel = 0
    	Click, %FoundX%, %FoundY% Left, 1  ; Matchmaking Failed
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 1545, 48, 1552, 56, 0x272727, 0, Fast RGB
    Sleep, 100
    If ErrorLevel = 0  ; Exit Explorer
    {
        Click, 1587, 13 Left, 1
        Sleep, 10
    }
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 24, 55, 31, 61, 0xFFFFFF, 0, Fast RGB
    If ErrorLevel = 0
    	Click, %FoundX%, %FoundY% Left, 1  ; Shift+Tab
    Sleep, 100
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 1001, 519, 1012, 530, 0x8BB2D5, 0, Fast RGB
    If ErrorLevel = 0
    	Click, %FoundX%, %FoundY% Left, 1  ; Player Reports
    Sleep, 100
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 1072, 391, 1078, 398, 0xE1C111, 0, Fast RGB  ; Cooldown Expired
    Sleep, 100
    If ErrorLevel = 0
    {
        Click, 1007, 513 Left, 1
        Sleep, 10
    }
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 650, 372, 657, 378, 0x979797, 0, Fast RGB  ; Disconnected
    Sleep, 100
    If ErrorLevel = 0
    {
        Click, 1047, 513 Left, 1
        Sleep, 10
    }
}
Return


^.::Pause
