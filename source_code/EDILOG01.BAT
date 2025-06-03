Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Enable Or Disable Blinking
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  If "%1"=="ON" Call DISCOL00 OFF CYAN BLACK BLINK
  If "%1"=="OFF" Call DISCOL00 OFF CYAN BLACK

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Set Color And Make Field Position Blink
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  If "%POSITION%"=="1" Echo [5;55H%CH1%
  If "%POSITION%"=="2" Echo [5;56H%CH2%
  If "%POSITION%"=="3" Echo [5;57H%CH3%
  If "%POSITION%"=="4" Echo [5;58H%CH4%
  If "%POSITION%"=="5" Echo [5;59H%CH5%
  If "%POSITION%"=="6" Echo [5;60H%CH6%
  If "%POSITION%"=="7" Echo [5;61H%CH7%
  If "%POSITION%"=="8" Echo [5;62H%CH8%
  If "%POSITION%"=="9" Echo [5;63H%CH9%
  If "%POSITION%"=="10" Echo [5;64H%CH10%
  If "%POSITION%"=="11" Echo [5;65H%CH11%
  If "%POSITION%"=="12" Echo [5;66H%CH12%
