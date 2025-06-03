Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem If First Item Already Highlighted Do Nothing
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  If "%DITEMHIGH%"=="1" Goto END

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Unhighlight Current Item
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call MENDET04 OFF %DITEMHIGH%

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Decrease Current Item Varible
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call MATDEC00 DITEMHIGH %DITEMHIGH%

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Highlight Previous Item
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call MENDET04 ON %DITEMHIGH%

:END
