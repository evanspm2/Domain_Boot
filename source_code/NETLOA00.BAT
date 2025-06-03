Path=%RDRIVE%\net;F:\IMAGES\GHOST\65;G:\DOS622

Echo. Starting Network...
%RDRIVE%\net\net initialize 
%RDRIVE%\net\netbind.com 
%RDRIVE%\net\umb.com 
%RDRIVE%\net\tcptsr.exe 
%RDRIVE%\net\tinyrfc.exe 
%RDRIVE%\net\nmtsr.exe 
%RDRIVE%\net\emsbfr.exe 
%RDRIVE%\net\net start 
%RDRIVE%\net\net logon %UN1%%UN2%%UN3%%UN4%%UN5%%UN6%%UN7%%UN8%%UN9%%UN10%%UN11%%UN12% /SavePW:NO /DOMAIN:%DM1%%DM2%%DM3%%DM4%%DM5%%DM6%%DM7%%DM8%%DM9%%DM10%%DM11%%DM12%

net use h: /home > nul
net use f: \\ntaswb01\shared > nul
net use g: \\lssa2cops\shared > nul
Echo.
Echo H: --: Home
Echo F: --: \\NTASWB01\SHARED
Echo G: --: \\LSSA2COPS\SHARED
Echo.
Echo Run GHOST to use version 6.5
Echo Run any DOS 6.22 file
Echo.
Echo.
