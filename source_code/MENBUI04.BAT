Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Is Item Going To Be Highlighted, Non Highlighted Or Erased
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  If "%1"=="ON" Call DISCOL00 OFF CYAN BLUE
  If "%1"=="OFF" Call DISCOL00 OFF CYAN BLACK
  If "%1"=="ERASE" Call DISCOL00 OFF BLACK BLACK

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Display Item
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  If "%2"=="1" Echo [5;54HAdams
  If "%2"=="2" Echo [6;54HWillard
  If "%2"=="3" Echo [7;54HWestwood
  If "%2"=="4" Echo [8;54HMilton
  If "%2"=="5" Echo [9;54HHutch
  If "%2"=="6" Echo [10;54HJQ
  If "%2"=="7" Echo [11;54HFranklin
  If "%2"=="8" Echo [12;54HPalmer
  If "%2"=="9" Echo [13;54HBatterymarch
  If "%2"=="10" Echo [14;54HForbes
  If "%2"=="11" Echo [15;54HWestborough
