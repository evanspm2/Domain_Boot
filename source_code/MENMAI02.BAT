Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Do Nothing If Last Item Already Highlighted
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  If "%ITEMHIGH%"=="11" Goto END

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Unhighlight Current Item
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call MENMAI04 OFF %ITEMHIGH%

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Increase Current Item Varible
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call MATINC00 ITEMHIGH %ITEMHIGH%

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Highlight Next Item
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call MENMAI04 ON %ITEMHIGH%

:END
