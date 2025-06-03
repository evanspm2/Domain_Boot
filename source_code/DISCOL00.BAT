Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Move Cursor To (1,1) Which Prevents Screen Scroll That Occurs When
Rem Cursor Is On Row 24 And Another Echo Is Executed
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Echo [1;1H

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Turn Bold On Or Off
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  If "%1"=="OFF" Echo [0m
  If "%1"=="ON" Echo [1m

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Turn Blink On
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  If "%4"=="BLINK" Echo [5m

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Set Foregrond And Background Varibles
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  If "%2"=="BLACK" SET FOREGROUND=30
  If "%2"=="RED" SET FOREGROUND=31
  If "%2"=="GREEN" SET FOREGROUND=32
  If "%2"=="YELLOW SET FOREGROUND=33
  If "%2"=="BLUE" SET FOREGROUND=34
  If "%2"=="MAGENTA" SET FOREGROUND=35
  If "%2"=="CYAN" SET FOREGROUND=36
  If "%2"=="WHITE" SET FOREGROUND=37

  If "%3"=="BLACK" SET BACKGROUND=40
  If "%3"=="RED" SET BACKGROUND=41
  If "%3"=="GREEN" SET BACKGROUND=42
  If "%3"=="YELLOW SET BACKGROUND=43
  If "%3"=="BLUE" SET BACKGROUND=44
  If "%3"=="MAGENTA" SET BACKGROUND=45
  If "%3"=="CYAN" SET BACKGROUND=46
  If "%3"=="WHITE" SET BACKGROUND=47

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Set Attribute
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Echo [%FOREGROUND%;%BACKGROUND%m
