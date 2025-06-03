Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem If First Item Already Highlighted Do Nothing
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  If "%BITEMHIGH%"=="1" Goto END

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Unhighlight Current Item
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call MENBUI04 OFF %BITEMHIGH%

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Decrease Current Item Varible
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call MATDEC00 BITEMHIGH %BITEMHIGH%

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Highlight Previous Item
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call MENBUI04 ON %BITEMHIGH%

:END
