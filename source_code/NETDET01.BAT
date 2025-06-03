Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Display Background Mat, NIC And Status Window
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call DISSCR00
  Call DISSCR05

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Display Items On Menu And Highlight First One
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call MENDET03

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Wait For User Input Then Act
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :WFUI
  CHOICE /C:´µ¶· /N > NUL
  If Errorlevel 004 Goto END
  If Errorlevel 003 Goto ENTER
  If Errorlevel 002 Goto DOWN
  If Errorlevel 001 Goto UP
  Goto WFUI

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Down Arrow Was Pressed
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :DOWN
  Call MENDET02
  Goto WFUI

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Up Arrow Was Pressed
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :UP
  Call MENDET01
  Goto WFUI

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Enter Was Pressed
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :ENTER
  If %DITEMHIGH%==1 Set NICTYPE=ELNK3
  If %DITEMHIGH%==2 Set NICTYPE=EL59X
  If %DITEMHIGH%==3 Set NICTYPE=EL90X
  If %DITEMHIGH%==4 Set NICTYPE=E100B
  If %DITEMHIGH%==5 Set NICTYPE=E100B
  If %DITEMHIGH%==6 Set NICTYPE=E100B
  If %DITEMHIGH%==7 Set NICTYPE=NETFLX3
  If %DITEMHIGH%==8 Set NICTYPE=AON325
  If %DITEMHIGH%==9 Set NICTYPE=IMBFE
  If %DITEMHIGH%==10 Set NICTYPE=ELPC3

  If %DITEMHIGH%==1 Set NICNAME=3COM EtherLink III (3C509/ISA)
  If %DITEMHIGH%==2 Set NICNAME=3COM EtherLink III (3C590/ISA)
  If %DITEMHIGH%==3 Set NICNAME=3COM Fast Ethernet (3C90X/PCI)
  If %DITEMHIGH%==4 Set NICNAME=Intel 82557 10_100
  If %DITEMHIGH%==5 Set NICNAME=Intel Pro 100 V_M
  If %DITEMHIGH%==6 Set NICNAME=Intel Pro 100+ w/MAlert on LAN
  If %DITEMHIGH%==7 Set NICNAME=Compaq NetFlex3
  If %DITEMHIGH%==8 Set NICNAME=SMC AON-325 10/100 PCI
  If %DITEMHIGH%==9 Set NICNAME=IBM PL
  If %DITEMHIGH%==10 Set NICNAME=3COM 3C589 PCMCIA

  If %DITEMHIGH%==4 Copy ..\..\NET\INTEL\AE100B.DOS ..\..\NET\E100B.DOS > NUL
  If %DITEMHIGH%==5 Copy ..\..\NET\INTEL\BE100B.DOS ..\..\NET\E100B.DOS > NUL
  If %DITEMHIGH%==6 Copy ..\..\NET\INTEL\CE100B.DOS ..\..\NET\E100B.DOS > NUL
:END
