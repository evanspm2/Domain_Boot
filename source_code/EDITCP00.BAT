Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Show Cursor Within Edit Field
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call EDITCP01 ON

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Wait For User Input And Act
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Rem ------ -------- -------- -------- -------- ------- -------- -------
  Rem Status Is Waiting For Input
  Rem ---------- -------- -------- -------- -------- ------- -------- ---
    :WFUI
    Set WFUI=1  

  Rem ------ -------- -------- -------- -------- ------- -------- -------
  Rem Wait For Input (0-9, Enter-¶, Escape-·, F10-¸, Left-¹)
  Rem ---------- -------- -------- -------- -------- ------- -------- ---
    CHOICE /C:0123456789¶·¸¹»º /N > NUL

  Rem ------ -------- -------- -------- -------- ------- -------- -------
  Rem Process Input
  Rem ---------- -------- -------- -------- -------- ------- -------- ---
    Rem ------ -------- -------- -------- -------- ------- -------- -------
    Rem Delete, Shift Field Left At Current Position
    Rem ---------- -------- -------- -------- -------- ------- -------- ---
      If Errorlevel 016 Call EDITCP06
      If "%WFUI%"=="0" Goto WFUI

    Rem ------ -------- -------- -------- -------- ------- -------- -------
    Rem Right Arrow, Move Cursor And Field Position Forward One
    Rem ---------- -------- -------- -------- -------- ------- -------- ---
      If Errorlevel 015 Call EDITCP05
      If "%WFUI%"=="0" Goto WFUI

    Rem ------ -------- -------- -------- -------- ------- -------- -------
    Rem Left Arrow, Move Cursor And Field Position Back One
    Rem ---------- -------- -------- -------- -------- ------- -------- ---
      If Errorlevel 014 Call EDITCP03
      If "%WFUI%"=="0" Goto WFUI

    Rem ------ -------- -------- -------- -------- ------- -------- -------
    Rem Action Key Was Pressed, Pass Control To Proper Routine
    Rem ---------- -------- -------- -------- -------- ------- -------- ---
      If Errorlevel 013 Set ACTION=F10
      If Errorlevel 012 If "%ACTION%"=="0" Set ACTION=ESC
      If Not "%ACTION%"=="0" Goto END

    Rem ------ -------- -------- -------- -------- ------- -------- -------
    Rem Enter, Exit Since Editing Is Done
    Rem ---------- -------- -------- -------- -------- ------- -------- ---
      If Errorlevel 011 Goto EDITDONE

    Rem ------ -------- -------- -------- -------- ------- -------- -------
    Rem Update Temporary Varible Which Corresponds With Current Edit Field
    Rem Position With The Number That Was Inputed, Then Get More Input
    Rem ---------- -------- -------- -------- -------- ------- -------- ---
      If Errorlevel 010 Call EDITCP04 9
      If "%WFUI%"=="0" Goto WFUI
      If Errorlevel 009 Call EDITCP04 8
      If "%WFUI%"=="0" Goto WFUI
      If Errorlevel 008 Call EDITCP04 7
      If "%WFUI%"=="0" Goto WFUI
      If Errorlevel 007 Call EDITCP04 6
      If "%WFUI%"=="0" Goto WFUI
      If Errorlevel 006 Call EDITCP04 5
      If "%WFUI%"=="0" Goto WFUI
      If Errorlevel 005 Call EDITCP04 4
      If "%WFUI%"=="0" Goto WFUI
      If Errorlevel 004 Call EDITCP04 3
      If "%WFUI%"=="0" Goto WFUI
      If Errorlevel 003 Call EDITCP04 2
      If "%WFUI%"=="0" Goto WFUI
      If Errorlevel 002 Call EDITCP04 1
      If "%WFUI%"=="0" Goto WFUI
      If Errorlevel 001 Call EDITCP04 0
      Goto WFUI

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Turn Off Cursor Since Editing Is Done
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :EDITDONE
  Call EDITCP01 OFF

:END
