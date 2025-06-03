Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Do Nothing If First Item Already Highlighted
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  If "%ITEMHIGH%"=="1" Goto END

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Unhighlight Current Item
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call MENMAI04 OFF %ITEMHIGH%

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Decrease Current Item Varible
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call MATDEC00 ITEMHIGH %ITEMHIGH%

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Highlight Previous Item
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call MENMAI04 ON %ITEMHIGH%

:END
