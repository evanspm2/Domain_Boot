Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Status Message
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Cls
  Echo Detecting Network Card...
  Goto SKIP

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Pass Control To DETECT Which Will Output Its Results To DETECT.INI
Rem Within The DETECT Directory
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Cd DETECT
  Call DETECT > NUL
  Cd ..
  
Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Detemine Results And Act
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call FIND /I "3COM_3" DETECT\DETECT.INI > NUL
  If Errorlevel 000 Goto ELNK3
  Call FIND /I "3COM_3PCI" DETECT\DETECT.INI > NUL
  If Errorlevel 000 Goto 3C90X
  Call FIND /I "INTEL_PRO" DETECT\DETECT.INI > NUL
  If Errorlevel 000 Goto AE100B

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Couldn't Detect NIC, Prompt User
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :SKIP
  Call NETDET01
  Goto END

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem 3COM EtherLink III (3C509)
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :ELNK3
  Set NICTYPE=ELNK3
  Set NICNAME=3COM EtherLink III (3C509/ISA)
  Goto END

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem 3COM Fast Ethernet (3C90X)
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :3C90X
  Set NICTYPE=3C90X
  Set NICNAME=3COM Fast Ethernet (3C90X/PCI)
  Goto END

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Intel 82557 10_100
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :AE100B
  Set NICTYPE=AE100B
  Set NICNAME=Intel 82557 10_100
  Goto END

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem If DETECT Doesn't Detect A NIC It Doesn't Overwrite DETECT.INI. Therefore
Rem It Must Be Done Here To Avoid Using DETECT.INI From A Previos Boot
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :END
  Del DETECT\DETECT.INI
