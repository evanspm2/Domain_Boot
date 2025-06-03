Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Load RDRIVE Varible With RAM Drive Letter And Collon
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call \LOADER\SETRAMD.BAT

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Unpack Contens To RAM Drive
Rem ---------- -------- -------- -------- -------- ------- -------- ---
   \LOADER\ARJ.EXE x -y \DBD.ARJ %RDRIVE%

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Copy Profile Data Routine To RAM Drive
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  COPY \DBDATA\INTVAR01.BAT %RDRIVE%\DB\BIN > NUL

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Pass Control To Domain Boot
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  %RDRIVE%
  Cd\DB\BIN
  DB.BAT
