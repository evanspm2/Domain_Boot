Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Highlight First Item
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Set BITEMHIGH=1

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Display All Menu Items And Highlight First One In Change Window
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call MENBUI03

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Wait For User Input And Act
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :WFUI
    CHOICE /C:´µ¶·¸ /N > NUL
    If Errorlevel 005 Set ACTION=F10
    If Errorlevel 004 If "%ACTION%"=="0" Set ACTION=ESC
    If NOT "%ACTION%"=="0" Goto END
    If Errorlevel 003 Goto ENTER
    If Errorlevel 002 Goto DOWN
    If Errorlevel 001 Goto UP
  Goto WFUI

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Down Arrow Was Pressed
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :DOWN
  Call MENBUI02
  Goto WFUI

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Up Arrow Was Pressed
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :UP
  Call MENBUI01
  Goto WFUI

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Enter Was Pressed, Update All WIN Varibles And Exit
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :ENTER
  If "%BITEMHIGH%"=="1" Call MENBUI05 1 5 5 1 0 8 1 5 2 1 0 5 1 5 5 1 0 8 0 4 3 0 5 0 Adams
  If "%BITEMHIGH%"=="2" Call MENBUI05 1 5 5 1 0 8 2 1 8 1 8 1 1 5 5 1 0 8 0 4 9 1 0 0 Willard
  If "%BITEMHIGH%"=="3" Call MENBUI05 1 5 5 1 0 8 2 2 1 2 0 6 1 5 5 1 0 8 0 4 3 0 5 0 Westwood
  If "%BITEMHIGH%"=="4" Call MENBUI05 1 5 5 1 0 8 0 3 2 1 5 9 1 5 5 1 0 8 0 4 3 0 5 0 Milton
  If "%BITEMHIGH%"=="5" Call MENBUI05 1 5 5 1 0 8 1 5 2 1 0 5 1 5 5 1 0 8 0 4 3 0 5 0 Hutch
  If "%BITEMHIGH%"=="6" Call MENBUI05 1 5 5 1 0 8 2 1 8 1 8 1 1 5 5 1 0 8 0 4 9 1 0 0 JQ
  If "%BITEMHIGH%"=="7" Call MENBUI05 1 5 5 1 0 8 1 0 3 1 3 2 1 5 5 1 0 8 0 4 9 1 0 0 Franklin
  If "%BITEMHIGH%"=="8" Call MENBUI05 1 5 5 1 0 8 2 1 8 1 8 1 1 5 5 1 0 8 0 4 9 1 0 0 Palmer
  If "%BITEMHIGH%"=="9" Call MENBUI05 1 9 2 2 5 0 0 9 5 1 7 3 1 5 5 1 0 8 0 4 9 1 0 0 Batterymarch
  If "%BITEMHIGH%"=="10" Call MENBUI05 1 5 5 1 0 8 1 5 2 1 0 5 1 5 5 1 0 8 0 4 3 0 5 0 Forbes
  If "%BITEMHIGH%"=="11" Call MENBUI05 1 5 5 1 0 8 0 4 9 1 0 0 1 5 5 1 0 8 1 5 2 1 0 5 Westborough

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Erase Menu From Change Window
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call MENBUI06

:END
