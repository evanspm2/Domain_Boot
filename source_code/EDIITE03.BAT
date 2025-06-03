Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Which Item Is Highlighted
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  If "%ITEMHIGH%"=="1" Goto IP
  If "%ITEMHIGH%"=="2" Goto GW
  If "%ITEMHIGH%"=="4" Goto PW
  If "%ITEMHIGH%"=="5" Goto SW
  If "%ITEMHIGH%"=="6" Goto PB
  If "%ITEMHIGH%"=="7" Goto SM
  If "%ITEMHIGH%"=="8" Goto UN
  If "%ITEMHIGH%"=="9" Goto PS
  If "%ITEMHIGH%"=="10" Goto PN
  If "%ITEMHIGH%"=="11" Goto DM

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Import Current IP Value
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :IP
  Set IP1=%CH1%
  Set IP2=%CH2%
  Set IP3=%CH3%
  Set IP4=%CH4%
  Set IP5=%CH5%
  Set IP6=%CH6%
  Set IP7=%CH7%
  Set IP8=%CH8%
  Set IP9=%CH9%
  Set IP10=%CH10%
  Set IP11=%CH11%
  Set IP12=%CH12%
  Goto END

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Import Current Gateway Value
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :GW
  Set GW1=%CH1%
  Set GW2=%CH2%
  Set GW3=%CH3%
  Set GW4=%CH4%
  Set GW5=%CH5%
  Set GW6=%CH6%
  Set GW7=%CH7%
  Set GW8=%CH8%
  Set GW9=%CH9%
  Set GW10=%CH10%
  Set GW11=%CH11%
  Set GW12=%CH12%
  Goto END

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Import Current Primary WIN Value
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :PW
  Set PW1=%CH1%
  Set PW2=%CH2%
  Set PW3=%CH3%
  Set PW4=%CH4%
  Set PW5=%CH5%
  Set PW6=%CH6%
  Set PW7=%CH7%
  Set PW8=%CH8%
  Set PW9=%CH9%
  Set PW10=%CH10%
  Set PW11=%CH11%
  Set PW12=%CH12%
  Goto END

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Import Current Secondary WIN Value
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :SW
  Set SW1=%CH1%
  Set SW2=%CH2%
  Set SW3=%CH3%
  Set SW4=%CH4%
  Set SW5=%CH5%
  Set SW6=%CH6%
  Set SW7=%CH7%
  Set SW8=%CH8%
  Set SW9=%CH9%
  Set SW10=%CH10%
  Set SW11=%CH11%
  Set SW12=%CH12%
  Goto END

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Import Current PDC/BDC Value
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :PB
  Set PB1=%CH1%
  Set PB2=%CH2%
  Set PB3=%CH3%
  Set PB4=%CH4%
  Set PB5=%CH5%
  Set PB6=%CH6%
  Set PB7=%CH7%
  Set PB8=%CH8%
  Set PB9=%CH9%
  Set PB10=%CH10%
  Set PB11=%CH11%
  Set PB12=%CH12%
  Goto END

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Import Current Subnet Mask Value
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :SM
  Set SM1=%CH1%
  Set SM2=%CH2%
  Set SM3=%CH3%
  Set SM4=%CH4%
  Set SM5=%CH5%
  Set SM6=%CH6%
  Set SM7=%CH7%
  Set SM8=%CH8%
  Set SM9=%CH9%
  Set SM10=%CH10%
  Set SM11=%CH11%
  Set SM12=%CH12%
  Goto END

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Import Current Username Value
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :UN
  Set UN1=%CH1%
  Set UN2=%CH2%
  Set UN3=%CH3%
  Set UN4=%CH4%
  Set UN5=%CH5%
  Set UN6=%CH6%
  Set UN7=%CH7%
  Set UN8=%CH8%
  Set UN9=%CH9%
  Set UN10=%CH10%
  Set UN11=%CH11%
  Set UN12=%CH12%
  Goto END

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Import Current Password Value
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :PS
  Set PS1=%CH1%
  Set PS2=%CH2%
  Set PS3=%CH3%
  Set PS4=%CH4%
  Set PS5=%CH5%
  Set PS6=%CH6%
  Set PS7=%CH7%
  Set PS8=%CH8%
  Set PS9=%CH9%
  Set PS10=%CH10%
  Set PS11=%CH11%
  Set PS12=%CH12%
  Goto END

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Import Current PC Name Value
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :PN
  Set PN1=%CH1%
  Set PN2=%CH2%
  Set PN3=%CH3%
  Set PN4=%CH4%
  Set PN5=%CH5%
  Set PN6=%CH6%
  Set PN7=%CH7%
  Set PN8=%CH8%
  Set PN9=%CH9%
  Set PN10=%CH10%
  Set PN11=%CH11%
  Set PN12=%CH12%
  Goto END

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Import Current Domain Name Value
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :DM
  Set DM1=%CH1%
  Set DM2=%CH2%
  Set DM3=%CH3%
  Set DM4=%CH4%
  Set DM5=%CH5%
  Set DM6=%CH6%
  Set DM7=%CH7%
  Set DM8=%CH8%
  Set DM9=%CH9%
  Set DM10=%CH10%
  Set DM11=%CH11%
  Set DM12=%CH12%
  Goto END

:END
