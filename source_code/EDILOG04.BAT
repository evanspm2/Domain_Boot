Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Save Input To Tempoary Varible Corresponding With Current Field Position
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  If "%POSITION%"=="1" Set CH1=%1
  If "%POSITION%"=="2" Set CH2=%1
  If "%POSITION%"=="3" Set CH3=%1
  If "%POSITION%"=="4" Set CH4=%1
  If "%POSITION%"=="5" Set CH5=%1
  If "%POSITION%"=="6" Set CH6=%1
  If "%POSITION%"=="7" Set CH7=%1
  If "%POSITION%"=="8" Set CH8=%1
  If "%POSITION%"=="9" Set CH9=%1
  If "%POSITION%"=="10" Set CH10=%1
  If "%POSITION%"=="11" Set CH11=%1
  If "%POSITION%"=="12" Set CH12=%1

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Turn Cursor Off
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call EDILOG01 OFF

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Increase Position Field Position
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  If NOT "%POSITION%"=="12" Call MATINC00 POSITION %POSITION%

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Turn Cursor On
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call EDILOG01 ON

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Get More Input
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Set WFUI=0
