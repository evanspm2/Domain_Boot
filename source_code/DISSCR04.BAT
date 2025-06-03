Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Display Action Window And Actions
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Rem ------ -------- -------- -------- -------- ------- -------- -------
  Rem Display Action Window
  Rem ---------- -------- -------- -------- -------- ------- -------- ---
    Call DISCOL00 OFF RED BLACK
    Echo [19;52Hึฤ
    Call DISCOL00 ON WHITE BLUE
    Echo [19;54H      Action     
    Call DISCOL00 OFF RED BLACK
    Echo [19;71Hฤท
    Echo [20;52Hบ                   บ 
    Echo [21;52Hบ                   บ 
    Echo [22;52Hศอออออออออออออออออออผ 
    Echo [23;53H                    

  Rem ------ -------- -------- -------- -------- ------- -------- -------
  Rem Display Actions
  Rem ---------- -------- -------- -------- -------- ------- -------- ---
    Call DISCOL00 OFF CYAN BLACK
    Echo [20;54HESC   Exit
    Echo [21;54HF10   Ok
