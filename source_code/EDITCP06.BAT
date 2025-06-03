Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Determine Field Position To Begin Shift Left
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  If "%POSITION%"=="2" Goto SHIFTP2
  If "%POSITION%"=="3" Goto SHIFTP3
  If "%POSITION%"=="4" Goto SHIFTP4
  If "%POSITION%"=="5" Goto SHIFTP5
  If "%POSITION%"=="6" Goto SHIFTP6
  If "%POSITION%"=="7" Goto SHIFTP7
  If "%POSITION%"=="8" Goto SHIFTP8
  If "%POSITION%"=="9" Goto SHIFTP9
  If "%POSITION%"=="10" Goto SHIFTP10
  If "%POSITION%"=="11" Goto SHIFTP11
  If "%POSITION%"=="12" Goto SHIFTP12

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Shift Positions After Current Position Left
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Set CH1=%CH2%
  :SHIFTP2
  Set CH2=%CH3%
  :SHIFTP3
  Set CH3=%CH4%
  :SHIFTP4
  Set CH4=%CH5%
  :SHIFTP5
  Set CH5=%CH6%
  :SHIFTP6
  Set CH6=%CH7%
  :SHIFTP7
  Set CH7=%CH8%
  :SHIFTP8
  Set CH8=%CH9%
  :SHIFTP9
  Set CH9=%CH10%
  :SHIFTP10
  Set CH10=%CH11%
  :SHIFTP11
  Set CH11=%CH12%
  :SHIFTP12
  Set CH12= 

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Display Updated Edit Field And Turn Cursor On
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call EDIITE02 ON %AWINDOW%
  Call EDITCP01 ON

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Get More Input
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Set WFUI=0
