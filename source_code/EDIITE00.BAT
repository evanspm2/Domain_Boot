Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Import Items Current Value To Tempoary Varibles
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call EDIITE01

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Display Edit Feild In Change Window
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call EDIITE02 ON %AWINDOW%

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Set Cursor Position Within The Edit Feild. [*  .   .   .   ]
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Set POSITION=1

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Pass Control To Input Type, TCP Window-Number LOG Window-Alpa
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  If "%AWINDOW%"=="TCP" Call EDITCP00
  If "%AWINDOW%"=="LOG" Call EDILOG00

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Export Items Current Value
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call EDIITE03

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Erase Edit Feild From Change Window
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call EDIITE02 OFF %AWINDOW%
