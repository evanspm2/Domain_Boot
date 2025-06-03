Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Display Each Item And Highlight First One
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call MENMAI04 ON 1
  Call MENMAI04 OFF 2
  Call MENMAI04 OFF 3
  Call MENMAI04 OFF 4
  Call MENMAI04 OFF 5
  Call MENMAI04 OFF 6
  Call MENMAI04 OFF 7
  Call MENMAI04 OFF 8
  Call MENMAI04 OFF 9
  Call MENMAI04 OFF 10
  Call MENMAI04 OFF 11
  Call MENMAI04 OFF 12

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Since Menu Item One Is Highlighted And In TCP/IP Window Chnage This
Rem Varible. Line 15 Above Sets The Varible To LOG Which Is Acceptable
Rem Becuase The Lines Above Are Displaying The Menu
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Set AWINDOW=TCP
