Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Display Items On Menu And Highlight First One
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call MENMAI03

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Wait For User Input Then Act
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :WFUI
  CHOICE /C:´µ¶¸· /N > NUL
  If Errorlevel 005 Set ACTION=ESC
  If Errorlevel 004 If "%ACTION%"=="0" Set ACTION=F10
  If Not "%ACTION%"=="0" Goto END
  If Errorlevel 003 Goto ENTER
  If Errorlevel 002 Goto DOWN
  If Errorlevel 001 Goto UP
  Goto WFUI

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Down Arrow Was Pressed
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :DOWN
  Call MENMAI02
  Goto WFUI

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Up Arrow Was Pressed
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :UP
  Call MENMAI01
  Goto WFUI

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Enter Was Pressed, Pass Control To Proper Routine
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :ENTER
  Rem ------ -------- -------- -------- -------- ------- -------- -------
  Rem Pass Control To Building Menu, Then Update WIN Items On Screen With
  Rem The New Values. Only If Building Item Was Selected Though.
  Rem ---------- -------- -------- -------- -------- ------- -------- ---
    If "%ITEMHIGH%"=="3" Call MENBUI00
    If Not "%ACTION%"=="0" Goto END
    If "%ITEMHIGH%"=="3" Call MENMAI04 OFF 4
    If "%ITEMHIGH%"=="3" Call MENMAI04 OFF 5

  Rem ------ -------- -------- -------- -------- ------- -------- -------
  Rem Pass Control To Edit Menu, If Anything But The Building Item Is Selected
  Rem ---------- -------- -------- -------- -------- ------- -------- ---
    If NOT "%ITEMHIGH%"=="3" Call EDIITE00
    If NOT "%ACTION%"=="0" Goto END
    
  Rem ------ -------- -------- -------- -------- ------- -------- -------
  Rem Update Item On Screen With New Value
  Rem ---------- -------- -------- -------- -------- ------- -------- ---
    Call MENMAI04 OFF %ITEMHIGH%
    Call MENMAI04 ON %ITEMHIGH%
    Goto WFUI

:END
