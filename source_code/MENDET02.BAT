Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem If Last Item Is Already Highlighted Do Nothing
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  If "%DITEMHIGH%"=="10" Goto END

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Unhighlight Current Item
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call MENDET04 OFF %DITEMHIGH%

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Increase Current Item Varible
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call MATINC00 DITEMHIGH %DITEMHIGH%

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Highlight Next Item
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call MENDET04 ON %DITEMHIGH%

:END
