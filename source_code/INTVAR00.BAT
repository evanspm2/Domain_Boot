Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Used Exclusivly Within DISCOL00
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Set FOREGROUND=0
  Set BACKGROUND=0

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Represents Highlighted Item On Main Menu (1=1st Item, 2=2nd Item, etc.)
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Set ITEMHIGH=1

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Represents Highlighted Item On Building Menu (1=1st Item, 2=2nd Item, etc.)
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Set BITEMHIGH=1

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Represents Highlighted Item On NIC Menu (1=1st Item, 2=2nd Item, etc.)
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Set DITEMHIGH=1

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Window Which Highlighter Is In (TCP=TCP/IP Window, LOG=LOGON Window)
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Set AWINDOW=TCP

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Used Exclusivly Within In EDIITE00
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Set POSITION=1
  Set CH1=0
  Set CH2=0
  Set CH3=0
  Set CH4=0
  Set CH5=0
  Set CH6=0
  Set CH7=0
  Set CH8=0
  Set CH9=0
  Set CH10=0
  Set CH11=0
  Set CH12=0
  Set WFUI=1

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Set To 0 Before A Routine Acting Upon A Key Returns. This Method
Rem Aids In Input Loop Creation Via CHOICE.COM
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Set WFUI=1

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Set To F10 Or ESC If Pressed. All Parent Routines Must Check For
Rem This After Receiving Control Back From A Routine That Gets Input
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Set ACTION=0

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem NIC Name
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Set NICNAME=0

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem NIC Name
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Set NICTYPE=0

