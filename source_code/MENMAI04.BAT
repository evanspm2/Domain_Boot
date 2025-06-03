Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Erase Building From Screen Before New Value Is Displayed. The BUILDING
Rem Varibles Value Is A String In Which The Length Is Unknown To This Routine.
Rem For Example The String Dog Is 3 Characters In Length. Therefore Line 20
Rem Below Might Output A Mistake Simalar To This "Adamsinson   ]". By Erasing
Rem Anything Already On The Screen This Is Prevented.
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  If "%2"=="3" Call DISCOL00 OFF BLACK BLACK
  If "%2"=="3" Echo [7;22H              

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem If Item Is To Be Highlighted Change Color
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  If "%1"=="ON" Call DISCOL00 OFF CYAN BLUE
  If "%1"=="OFF" Call DISCOL00 OFF CYAN BLACK

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Display Item And Its Value
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  If "%2"=="1" Echo [5;10HIP Address  [%IP1%%IP2%%IP3%.%IP4%%IP5%%IP6%.%IP7%%IP8%%IP9%.%IP10%%IP11%%IP12%]
  If "%2"=="2" Echo [6;10HGateway     [%GW1%%GW2%%GW3%.%GW4%%GW5%%GW6%.%GW7%%GW8%%GW9%.%GW10%%GW11%%GW12%]
  If "%2"=="3" Echo [7;10HBuilding    [%BUILDING%]
  If "%2"=="4" Echo [8;10H Pri WINS   [%PW1%%PW2%%PW3%.%PW4%%PW5%%PW6%.%PW7%%PW8%%PW9%.%PW10%%PW11%%PW12%]
  If "%2"=="5" Echo [9;10H Sec WINS   [%SW1%%SW2%%SW3%.%SW4%%SW5%%SW6%.%SW7%%SW8%%SW9%.%SW10%%SW11%%SW12%]
  If "%2"=="6" Echo [10;10HPDC/BDC     [%PB1%%PB2%%PB3%.%PB4%%PB5%%PB6%.%PB7%%PB8%%PB9%.%PB10%%PB11%%PB12%]
  If "%2"=="7" Echo [11;10HSubnet Mask [%SM1%%SM2%%SM3%.%SM4%%SM5%%SM6%.%SM7%%SM8%%SM9%.%SM10%%SM11%%SM12%]
  If "%2"=="8" Echo [17;10HUsername    [%UN1%%UN2%%UN3%%UN4%%UN5%%UN6%%UN7%%UN8%%UN9%%UN10%%UN11%%UN12%]
  If "%2"=="9" Echo [18;10HPassword    [%PS1%%PS2%%PS3%%PS4%%PS5%%PS6%%PS7%%PS8%%PS9%%PS10%%PS11%%PS12%]
  If "%2"=="10" Echo [19;10HPC Name     [%PN1%%PN2%%PN3%%PN4%%PN5%%PN6%%PN7%%PN8%%PN9%%PN10%%PN11%%PN12%]
  If "%2"=="11" Echo [20;10HDOMAIN      [%DM1%%DM2%%DM3%%DM4%%DM5%%DM6%%DM7%%DM8%%DM9%%DM10%%DM11%%DM12%]
  If "%2"=="12" Echo [21;10H%NICNAME%

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Determine Which Window The Highlighted Item Is In And Set Varible
Rem Ocordingly
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  If "%2"=="1" Set AWINDOW=TCP
  If "%2"=="2" Set AWINDOW=TCP
  If "%2"=="3" Set AWINDOW=TCP
  If "%2"=="4" Set AWINDOW=TCP
  If "%2"=="5" Set AWINDOW=TCP
  If "%2"=="6" Set AWINDOW=TCP
  If "%2"=="7" Set AWINDOW=TCP
  If "%2"=="8" Set AWINDOW=LOG
  If "%2"=="9" Set AWINDOW=LOG
  If "%2"=="10" Set AWINDOW=LOG
  If "%2"=="11" Set AWINDOW=LOG
  If "%2"=="12" Set AWINDOW=LOG
