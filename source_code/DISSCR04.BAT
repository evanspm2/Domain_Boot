Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Display Action Window And Actions
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Rem ------ -------- -------- -------- -------- ------- -------- -------
  Rem Display Action Window
  Rem ---------- -------- -------- -------- -------- ------- -------- ---
    Call DISCOL00 OFF RED BLACK
    Echo [19;52H��
    Call DISCOL00 ON WHITE BLUE
    Echo [19;54H      Action     
    Call DISCOL00 OFF RED BLACK
    Echo [19;71Hķ
    Echo [20;52H�                   � 
    Echo [21;52H�                   � 
    Echo [22;52H�������������������ͼ 
    Echo [23;53H                    

  Rem ------ -------- -------- -------- -------- ------- -------- -------
  Rem Display Actions
  Rem ---------- -------- -------- -------- -------- ------- -------- ---
    Call DISCOL00 OFF CYAN BLACK
    Echo [20;54HESC   Exit
    Echo [21;54HF10   Ok
