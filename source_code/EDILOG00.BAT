Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Show Cursor  Within Edit Field
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call EDILOG01 ON

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Wait For User Input And Act
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Rem ------ -------- -------- -------- -------- ------- -------- -------
  Rem Status Is Waiting For Input
  Rem ---------- -------- -------- -------- -------- ------- -------- ---
    :WFUI
    Set WFUI=1  

  Rem ------ -------- -------- -------- -------- ------- -------- -------
  Rem Wait For Input (0-9, A-Z, Enter-¶, Escape-·, F10-¸, Left-¹)
  Rem ---------- -------- -------- -------- -------- ------- -------- ---
    CHOICE /C:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_-¹¶¸·º» /N > NUL

  Rem ------ -------- -------- -------- -------- ------- -------- -------
  Rem Process Input
  Rem ---------- -------- -------- -------- -------- ------- -------- ---
    Rem ------ -------- -------- -------- -------- ------- -------- -------
    Rem Right Arrow, Move Cursor Right
    Rem ---------- -------- -------- -------- -------- ------- -------- ---
      If Errorlevel 044 Call EDILOG06
      If "%WFUI%"=="0" Goto WFUI

    Rem ------ -------- -------- -------- -------- ------- -------- -------
    Rem Delete, Shift Field Left At Current Position
    Rem ---------- -------- -------- -------- -------- ------- -------- ---
      If Errorlevel 043 Call EDILOG05
      If "%WFUI%"=="0" Goto WFUI

    Rem ------ -------- -------- -------- -------- ------- -------- -------
    Rem Action Key Pressed, Pass Control To Proper Routine
    Rem ---------- -------- -------- -------- -------- ------- -------- ---
      If Errorlevel 042 Set ACTION=ESC
      If Errorlevel 041 If "%ACTION%"=="0" Set ACTION=F10
      If Not "%ACTION%"=="0" Goto END

    Rem ------ -------- -------- -------- -------- ------- -------- -------
    Rem Enter, Exit Since Editing Is Done
    Rem ---------- -------- -------- -------- -------- ------- -------- ---
      If Errorlevel 040 Goto EDITDONE

    Rem ------ -------- -------- -------- -------- ------- -------- -------
    Rem Left Arrow, Move Curosr Left
    Rem ---------- -------- -------- -------- -------- ------- -------- ---
      If Errorlevel 039 Call EDILOG03
      If "%WFUI%"=="0" Goto WFUI

    Rem ------ -------- -------- -------- -------- ------- -------- -------
    Rem Update Temporary Varbile Corresponding With Current Edit Feild
    Rem Position With Character Just Inputed
    Rem ---------- -------- -------- -------- -------- ------- -------- ---
      If ErrorLevel 038 Call EDILOG04 -
      If "%WFUI%"=="0" Goto WFUI
      If ErrorLevel 037 Call EDILOG04 _
      If "%WFUI%"=="0" Goto WFUI

    Rem ------ -------- -------- -------- -------- ------- -------- -------
    Rem Update Temporary Varbile Corresponding With Current Edit Feild
    Rem Position With Letter Just Inputed
    Rem ---------- -------- -------- -------- -------- ------- -------- ---
      If ErrorLevel 036 Call EDILOG04 Z
      If "%WFUI%"=="0" Goto WFUI
      If ErrorLevel 035 Call EDILOG04 Y
      If "%WFUI%"=="0" Goto WFUI
      If ErrorLevel 034 Call EDILOG04 X
      If "%WFUI%"=="0" Goto WFUI
      If ErrorLevel 033 Call EDILOG04 W
      If "%WFUI%"=="0" Goto WFUI
      If ErrorLevel 032 Call EDILOG04 V
      If "%WFUI%"=="0" Goto WFUI
      If ErrorLevel 031 Call EDILOG04 U
      If "%WFUI%"=="0" Goto WFUI
      If ErrorLevel 030 Call EDILOG04 T
      If "%WFUI%"=="0" Goto WFUI
      If ErrorLevel 029 Call EDILOG04 S
      If "%WFUI%"=="0" Goto WFUI
      If ErrorLevel 028 Call EDILOG04 R
      If "%WFUI%"=="0" Goto WFUI
      If ErrorLevel 027 Call EDILOG04 Q
      If "%WFUI%"=="0" Goto WFUI
      If ErrorLevel 026 Call EDILOG04 P
      If "%WFUI%"=="0" Goto WFUI
      If ErrorLevel 025 Call EDILOG04 O
      If "%WFUI%"=="0" Goto WFUI
      If ErrorLevel 024 Call EDILOG04 N
      If "%WFUI%"=="0" Goto WFUI
      If ErrorLevel 023 Call EDILOG04 M
      If "%WFUI%"=="0" Goto WFUI
      If ErrorLevel 022 Call EDILOG04 L
      If "%WFUI%"=="0" Goto WFUI
      If ErrorLevel 021 Call EDILOG04 K
      If "%WFUI%"=="0" Goto WFUI
      If ErrorLevel 020 Call EDILOG04 J
      If "%WFUI%"=="0" Goto WFUI
      If ErrorLevel 019 Call EDILOG04 I
      If "%WFUI%"=="0" Goto WFUI
      If ErrorLevel 018 Call EDILOG04 H
      If "%WFUI%"=="0" Goto WFUI
      If ErrorLevel 017 Call EDILOG04 G
      If "%WFUI%"=="0" Goto WFUI
      If ErrorLevel 016 Call EDILOG04 F
      If "%WFUI%"=="0" Goto WFUI
      If ErrorLevel 015 Call EDILOG04 E
      If "%WFUI%"=="0" Goto WFUI
      If ErrorLevel 014 Call EDILOG04 D
      If "%WFUI%"=="0" Goto WFUI
      If ErrorLevel 013 Call EDILOG04 C
      If "%WFUI%"=="0" Goto WFUI
      If ErrorLevel 012 Call EDILOG04 B
      If "%WFUI%"=="0" Goto WFUI
      If ErrorLevel 011 Call EDILOG04 A
      If "%WFUI%"=="0" Goto WFUI

    Rem ------ -------- -------- -------- -------- ------- -------- -------
    Rem Update Temporary Varbile Corresponding With Current Edit Feild
    Rem Position With Digit Just Inputed
    Rem ---------- -------- -------- -------- -------- ------- -------- ---
      If Errorlevel 010 Call EDILOG04 9
      If "%WFUI%"=="0" Goto WFUI
      If Errorlevel 009 Call EDILOG04 8
      If "%WFUI%"=="0" Goto WFUI
      If Errorlevel 008 Call EDILOG04 7
      If "%WFUI%"=="0" Goto WFUI
      If Errorlevel 007 Call EDILOG04 6
      If "%WFUI%"=="0" Goto WFUI
      If Errorlevel 006 Call EDILOG04 5
      If "%WFUI%"=="0" Goto WFUI
      If Errorlevel 005 Call EDILOG04 4
      If "%WFUI%"=="0" Goto WFUI
      If Errorlevel 04 Call EDILOG04 3
      If "%WFUI%"=="0" Goto WFUI
      If Errorlevel 003 Call EDILOG04 2
      If "%WFUI%"=="0" Goto WFUI
      If Errorlevel 002 Call EDILOG04 1
      If "%WFUI%"=="0" Goto WFUI
      If Errorlevel 001 Call EDILOG04 0
      Goto WFUI

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Turn Off Cursor Since Editing Is Done
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :EDITDONE
  Call EDILOG01 OFF

:END
