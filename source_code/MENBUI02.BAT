Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem If Last Item Is Already Highlighted Do Nothing
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  If "%BITEMHIGH%"=="8" Goto END

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Unhighlight Current Item
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call MENBUI04 OFF %BITEMHIGH%

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Increase Current Item Varible
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call MATINC00 BITEMHIGH %BITEMHIGH%

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Highlight Next Item
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call MENBUI04 ON %BITEMHIGH%

:END
