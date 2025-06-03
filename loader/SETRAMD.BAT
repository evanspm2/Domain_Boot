Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Returns Value Corrosponds With Drive Letter
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call \LOADER\GETRAMD

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Process Return Value
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  If Errorlevel 3 Set RDRIVE=C:
  If Errorlevel 4 Set RDRIVE=D:
  If Errorlevel 5 Set RDRIVE=E:
  If Errorlevel 6 Set RDRIVE=F:
  If Errorlevel 7 Set RDRIVE=G:
  If Errorlevel 8 Set RDRIVE=H:
  If Errorlevel 9 Set RDRIVE=I:
  If Errorlevel 10 Set RDRIVE=J:
  If Errorlevel 11 Set RDRIVE=K:
  If Errorlevel 12 Set RDRIVE=L:
  If Errorlevel 13 Set RDRIVE=M:
  If Errorlevel 14 Set RDRIVE=N:
  If Errorlevel 15 Set RDRIVE=O:
  If Errorlevel 16 Set RDRIVE=P:
  If Errorlevel 17 Set RDRIVE=Q:
  If Errorlevel 18 Set RDRIVE=R:
  If Errorlevel 19 Set RDRIVE=S:
  If Errorlevel 20 Set RDRIVE=T:
  If Errorlevel 21 Set RDRIVE=U:
  If Errorlevel 22 Set RDRIVE=V:
  If Errorlevel 23 Set RDRIVE=W:
  If Errorlevel 24 Set RDRIVE=X:
  If Errorlevel 25 Set RDRIVE=Y:
  If Errorlevel 26 Set RDRIVE=Z:
