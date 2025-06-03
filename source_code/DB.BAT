@Rem ------ -------- -------- -------- -------- ------- -------- -------
@Rem Redirect SRN: Output To NULL:
@Rem And Activate CTRL+C Exuction Breaking, Debugging Purposes
@Rem ---------- -------- -------- -------- -------- ------- -------- ---
  @Echo Off
  Break On

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Intialize Program Varibles Used Only During Exuction
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call INTVAR00

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Intialize Profile Varibles Which Are Saved Upon Program Termination
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call INTVAR01

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Change Characters Assigned To Keys Thus Providing Detection Ability
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call KEYMAP00

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Detect Network Interface Card
Rem ---------- -------- -------- -------- -------- ------- -------- ---
rem  Call NETDET00
rem  If Not %NICTYPE%==0 Goto CONTINUE2
rem  Set ACTION=ESC
rem  Goto baba

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Display Background Mat And Main Menu Windows
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :CONTINUE2
  Call DISSCR00
  Call DISSCR06

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Pass Control To Main Menu
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call MENMAI00

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Restore Oringal Characters Assigned To Keys
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :baba
  Call KEYMAP01

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Save Profile Varibles To Disk
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call INTVAR02
  Copy INTVAR01.BAT A:\DBDATA > NUL

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Return Control To COMMAND.COM If ESC Was Pressed
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call DISCOL00 OFF WHITE BLACK
  Cls
  If Not "%ACTION%"=="ESC" Goto AABB
  Call INTVAR03
  Call INTVAR04
  Goto END

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Update Client Files With NIC Card And Profile Settings
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :AABB
  Call NETSET00
  CLS
  
Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Delete Profile Varibles
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call INTVAR03

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Delete Program Varibles
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call INTVAR04

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Load Network
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  Call NETLOA00

:END
