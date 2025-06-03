Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Is Item Going To Be Highlighted, Non Highlighted Or Erased
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  If "%1"=="ON" Call DISCOL00 OFF CYAN BLUE
  If "%1"=="OFF" Call DISCOL00 OFF CYAN BLACK
  If "%1"=="ERASE" Call DISCOL00 OFF BLACK BLACK

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Display Item
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  If "%2"=="1" Echo [4;5H3COM EtherLink III (3C509/ISA)
  If "%2"=="2" Echo [5;5H3COM EtherLink III (3C590/ISA)
  If "%2"=="3" Echo [6;5H3COM Fast EtherNet (3C90X/PCI)
  If "%2"=="4" Echo [7;5HIntel 82557 10_100
  If "%2"=="5" Echo [8;5HIntel Pro 100 V_M
  If "%2"=="6" Echo [9;5HIntel Pro 100+ w/MAlert on LAN
  If "%2"=="7" Echo [10;5HCompaq NetFlex3
  If "%2"=="8" Echo [11;5HSMC AON-325 10/100 PCI
  If "%2"=="9" Echo [12;5HIBM PL
  If "%2"=="10" Echo [13;5H3COM 3C589 PCMCIA
