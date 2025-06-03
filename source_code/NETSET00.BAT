Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Overwrite PROTOCOL.INI With New Values
Rem ---------- -------- -------- -------- -------- ------- -------- ---
   Echo [network.setup]> %RDRIVE%\NET\PROTOCOL.INI
   Echo version=0x3110>> %RDRIVE%\NET\PROTOCOL.INI
   Echo netcard=ms$%NICTYPE%,1,MS$%NICTYPE%,1>> %RDRIVE%\NET\PROTOCOL.INI
   Echo transport=tcpip,TCPIP>> %RDRIVE%\NET\PROTOCOL.INI
   Echo lana0=ms$%NICTYPE%,1,tcpip>> %RDRIVE%\NET\PROTOCOL.INI
   Echo.>> %RDRIVE%\NET\PROTOCOL.INI
   Echo [ms$%NICTYPE%]>> %RDRIVE%\NET\PROTOCOL.INI
   Echo DRIVERNAME=%NICTYPE%$>> %RDRIVE%\NET\PROTOCOL.INI
   Echo.>> %RDRIVE%\NET\PROTOCOL.INI
   Echo [protman]>> %RDRIVE%\NET\PROTOCOL.INI
   Echo drivername=PROTMAN$>> %RDRIVE%\NET\PROTOCOL.INI
   Echo PRIORITY=MS$NDISHLP>> %RDRIVE%\NET\PROTOCOL.INI
   Echo.>> %RDRIVE%\NET\PROTOCOL.INI
   Echo [tcpip]>> %RDRIVE%\NET\PROTOCOL.INI
   Echo NBSessions=6>> %RDRIVE%\NET\PROTOCOL.INI
   Echo DefaultGateway0=%GW1%%GW2%%GW3% %GW4%%GW5%%GW6% %GW7%%GW8%%GW9% %GW10%%GW11%%GW12%>> %RDRIVE%\NET\PROTOCOL.INI>> %RDRIVE%\NET\PROTOCOL.INI
   Echo DefaultGateway1=%GW1%%GW2%%GW3% %GW4%%GW5%%GW6% %GW7%%GW8%%GW9% 251>> %RDRIVE%\NET\PROTOCOL.INI>> %RDRIVE%\NET\PROTOCOL.INI
   Echo SubNetMask0=%SM1%%SM2%%SM3% %SM4%%SM5%%SM6% %SM7%%SM8%%SM9% %SM10%%SM11%%SM12%>> %RDRIVE%\NET\PROTOCOL.INI>> %RDRIVE%\NET\PROTOCOL.INI
   Echo IPAddress0=%IP1%%IP2%%IP3% %IP4%%IP5%%IP6% %IP7%%IP8%%IP9% %IP10%%IP11%%IP12%>> %RDRIVE%\NET\PROTOCOL.INI>> %RDRIVE%\NET\PROTOCOL.INI
   Echo WINS_Server0=%PW1%%PW2%%PW3% %PW4%%PW5%%PW6% %PW7%%PW8%%PW9% %PW10%%PW11%%PW12%>> %RDRIVE%\NET\PROTOCOL.INI>> %RDRIVE%\NET\PROTOCOL.INI
   Echo WINS_Server1=%SW1%%SW2%%SW3% %SW4%%SW5%%SW6% %SW7%%SW8%%SW9% %SW10%%SW11%%SW12%>> %RDRIVE%\NET\PROTOCOL.INI>> %RDRIVE%\NET\PROTOCOL.INI
   Echo DisableDHCP=1>> %RDRIVE%\NET\PROTOCOL.INI
   Echo DriverName=TCPIP$>> %RDRIVE%\NET\PROTOCOL.INI
   Echo BINDINGS=ms$%NICTYPE%>> %RDRIVE%\NET\PROTOCOL.INI
   Echo LANABASE=0>> %RDRIVE%\NET\PROTOCOL.INI

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Overwrite SYSTEM.INI With New Values
Rem ---------- -------- -------- -------- -------- ------- -------- ---
   Echo [network]> %RDRIVE%\NET\SYSTEM.INI
   Echo filesharing=no>> %RDRIVE%\NET\SYSTEM.INI
   Echo printsharing=no>> %RDRIVE%\NET\SYSTEM.INI
   Echo autologon=no>> %RDRIVE%\NET\SYSTEM.INI
   Echo computername=%PN1%%PN2%%PN3%%PN4%%PN5%%PN6%%PN7%%PN8%%PN9%%PN10%%PN11%%PN12%>> %RDRIVE%\NET\SYSTEM.INI
   Echo lanroot=%RDRIVE%\NET>> %RDRIVE%\NET\SYSTEM.INI
   Echo username=%UN1%%UN2%%UN3%%UN4%%UN5%%UN6%%UN7%%UN8%%UN9%%UN10%%UN11%%UN12%>> %RDRIVE%\NET\SYSTEM.INI
   Echo workgroup=WORKGROUP>> %RDRIVE%\NET\SYSTEM.INI
   Echo reconnect=no>> %RDRIVE%\NET\SYSTEM.INI
   Echo dospophotkey=N>> %RDRIVE%\NET\SYSTEM.INI
   Echo lmlogon=0>> %RDRIVE%\NET\SYSTEM.INI
   Echo logondomain=%DM1%%DM2%%DM3%%DM4%%DM5%%DM6%%DM7%%DM8%%DM9%%DM10%%DM11%%DM12%>> %RDRIVE%\NET\SYSTEM.INI
   Echo preferredredir=full>> %RDRIVE%\NET\SYSTEM.INI
   Echo autostart=full>> %RDRIVE%\NET\SYSTEM.INI
   Echo maxconnections=8>> %RDRIVE%\NET\SYSTEM.INI
   Echo.>> %RDRIVE%\NET\SYSTEM.INI
   Echo [network drivers]>> %RDRIVE%\NET\SYSTEM.INI
   Echo netcard=%NICTYPE%.dos>> %RDRIVE%\NET\SYSTEM.INI
   Echo transport=tcpdrv.dos,nemm.dos>> %RDRIVE%\NET\SYSTEM.INI
   Echo devdir=%RDRIVE%\NET>> %RDRIVE%\NET\SYSTEM.INI
   Echo LoadRMDrivers=yes>> %RDRIVE%\NET\SYSTEM.INI
   Echo.>> %RDRIVE%\NET\SYSTEM.INI
   Echo [Password Lists]>> %RDRIVE%\NET\SYSTEM.INI
   Echo *Shares=%RDRIVE%\NET\Share000.PWL>> %RDRIVE%\NET\SYSTEM.INI

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Overwrite LMHOST With New Values
Rem ---------- -------- -------- -------- -------- ------- -------- ---
   Echo %PB1%%PB2%%PB3%.%PB4%%PB5%%PB6%.%PB7%%PB8%%PB9%.%PB10%%PB11%%PB12% #PRE #DOM:%DM1%%DM2%%DM3%%DM4%%DM5%%DM6%%DM7%%DM8%%DM9%%DM10%%DM11%%DM12% > ..\..\NET\LMHOSTS
