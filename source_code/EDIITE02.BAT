Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Each Window Has A Different Field
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Goto %2

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem TCP/IP Window Is Only IP Address's Thus The Field Would Be [   .   .   .   ]
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :TCP
  Call DISCOL00 OFF CYAN BLACK

  Rem ------ -------- -------- -------- -------- ------- -------- -------
  Rem Display Or Erase Feild
  Rem ---------- -------- -------- -------- -------- ------- -------- ---
    If "%1"=="ON" Echo [5;54H[%CH1%%CH2%%CH3%.%CH4%%CH5%%CH6%.%CH7%%CH8%%CH9%.%CH10%%CH11%%CH12%]
    If "%1"=="OFF" Echo [5;54H                ÿ
    Goto End

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem LOGON Window Is Only Text Thus Field Would Be [            ]
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :LOG
  Call DISCOL00 OFF CYAN BLACK

  Rem ------ -------- -------- -------- -------- ------- -------- -------
  Rem Display Or Erase Feild
  Rem ---------- -------- -------- -------- -------- ------- -------- ---
    If "%1"=="ON" Echo [5;54H[%CH1%%CH2%%CH3%%CH4%%CH5%%CH6%%CH7%%CH8%%CH9%%CH10%%CH11%%CH12%]
    If "%1"=="OFF" Echo [5;54H              ÿ

:END
