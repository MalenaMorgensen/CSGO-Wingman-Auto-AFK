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
    PixelSearch, FoundX, FoundY, 31, 85, 35, 91, 0xFFFFFF, 0, Fast RGB  ; Play
    Sleep, 100
    If ErrorLevel = 0
    {
        Click, 31, 97 Left, 1
        Sleep, 10
    }
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 468, 122, 475, 131, 0xFFFFFF, 0, Fast RGB
    If ErrorLevel = 0
    	Click, %FoundX%, %FoundY% Left, 1  ; Mode
    Sleep, 100
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 456, 143, 466, 151, 0xFFFFFF, 0, Fast RGB  ; Go
    If ErrorLevel = 0
    {
        Click, 1067, 689 Left, 1
        Sleep, 10
    }
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 958, 35, 964, 42, 0xFFFFFF, 0, Fast RGB
    If ErrorLevel = 0
    	Click, %FoundX%, %FoundY% Left, 1  ; Reconnect
    Sleep, 100
    Click, 579, 633, 0
    Sleep, 10
    Click, 629, 365 Left, Down  ; Accept
    Sleep, 20
    Click, 629, 365 Left, Up  ; Accept
    Sleep, 4000
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 834, 401, 839, 405, 0xFFFFFF, 0, Fast RGB
    If ErrorLevel = 0
    	Click, %FoundX%, %FoundY% Left, 1  ; Matchmaking Failed
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 1236, 38, 1242, 45, 0x272727, 0, Fast RGB
    Sleep, 100
    If ErrorLevel = 0  ; Exit Explorer
    {
        Click, 1270, 10 Left, 1
        Sleep, 10
    }
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 19, 44, 25, 49, 0xFFFFFF, 0, Fast RGB
    If ErrorLevel = 0
    	Click, %FoundX%, %FoundY% Left, 1  ; Shift+Tab
    Sleep, 100
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 801, 415, 809, 424, 0x8BB2D5, 0, Fast RGB
    If ErrorLevel = 0
    	Click, %FoundX%, %FoundY% Left, 1  ; Player Reports
    Sleep, 100
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 857, 313, 863, 319, 0xE1C111, 0, Fast RGB  ; Cooldown Expired
    Sleep, 100
    If ErrorLevel = 0
    {
        Click, 805, 411 Left, 1
        Sleep, 10
    }
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 520, 297, 525, 303, 0x979797, 0, Fast RGB  ; Disconnected
    Sleep, 100
    If ErrorLevel = 0
    {
        Click, 837, 410 Left, 1
        Sleep, 10
    }
}
Return


^.::Pause
