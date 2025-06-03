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
  Set CH1=%IP1%
  Set CH2=%IP2%
  Set CH3=%IP3%
  Set CH4=%IP4%
  Set CH5=%IP5%
  Set CH6=%IP6%
  Set CH7=%IP7%
  Set CH8=%IP8%
  Set CH9=%IP9%
  Set CH10=%IP10%
  Set CH11=%IP11%
  Set CH12=%IP12%
  Goto END

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Import Current Gateway Value
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :GW
  Set CH1=%GW1%
  Set CH2=%GW2%
  Set CH3=%GW3%
  Set CH4=%GW4%
  Set CH5=%GW5%
  Set CH6=%GW6%
  Set CH7=%GW7%
  Set CH8=%GW8%
  Set CH9=%GW9%
  Set CH10=%GW10%
  Set CH11=%GW11%
  Set CH12=%GW12%
  Goto END

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Import Current Primary WIN Value
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :PW
  Set CH1=%PW1%
  Set CH2=%PW2%
  Set CH3=%PW3%
  Set CH4=%PW4%
  Set CH5=%PW5%
  Set CH6=%PW6%
  Set CH7=%PW7%
  Set CH8=%PW8%
  Set CH9=%PW9%
  Set CH10=%PW10%
  Set CH11=%PW11%
  Set CH12=%PW12%
  Goto END

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Import Current Secondary WIN Value
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :SW
  Set CH1=%SW1%
  Set CH2=%SW2%
  Set CH3=%SW3%
  Set CH4=%SW4%
  Set CH5=%SW5%
  Set CH6=%SW6%
  Set CH7=%SW7%
  Set CH8=%SW8%
  Set CH9=%SW9%
  Set CH10=%SW10%
  Set CH11=%SW11%
  Set CH12=%SW12%
  Goto END

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Import Current PDC/BDC Value
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :PB
  Set CH1=%PB1%
  Set CH2=%PB2%
  Set CH3=%PB3%
  Set CH4=%PB4%
  Set CH5=%PB5%
  Set CH6=%PB6%
  Set CH7=%PB7%
  Set CH8=%PB8%
  Set CH9=%PB9%
  Set CH10=%PB10%
  Set CH11=%PB11%
  Set CH12=%PB12%
  Goto END

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Import Current Subnet Mask Value
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :SM
  Set CH1=%SM1%
  Set CH2=%SM2%
  Set CH3=%SM3%
  Set CH4=%SM4%
  Set CH5=%SM5%
  Set CH6=%SM6%
  Set CH7=%SM7%
  Set CH8=%SM8%
  Set CH9=%SM9%
  Set CH10=%SM10%
  Set CH11=%SM11%
  Set CH12=%SM12%
  Goto END

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Import Current Username Value
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :UN
  Set CH1=%UN1%
  Set CH2=%UN2%
  Set CH3=%UN3%
  Set CH4=%UN4%
  Set CH5=%UN5%
  Set CH6=%UN6%
  Set CH7=%UN7%
  Set CH8=%UN8%
  Set CH9=%UN9%
  Set CH10=%UN10%
  Set CH11=%UN11%
  Set CH12=%UN12%
  Goto END

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Import Current Password Value
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :PS
  Set CH1=%PS1%
  Set CH2=%PS2%
  Set CH3=%PS3%
  Set CH4=%PS4%
  Set CH5=%PS5%
  Set CH6=%PS6%
  Set CH7=%PS7%
  Set CH8=%PS8%
  Set CH9=%PS9%
  Set CH10=%PS10%
  Set CH11=%PS11%
  Set CH12=%PS12%
  Goto END

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Import Current PC Name Value
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :PN
  Set CH1=%PN1%
  Set CH2=%PN2%
  Set CH3=%PN3%
  Set CH4=%PN4%
  Set CH5=%PN5%
  Set CH6=%PN6%
  Set CH7=%PN7%
  Set CH8=%PN8%
  Set CH9=%PN9%
  Set CH10=%PN10%
  Set CH11=%PN11%
  Set CH12=%PN12%
  Goto END

Rem ------ -------- -------- -------- -------- ------- -------- -------
Rem Import Current Domain Name Value
Rem ---------- -------- -------- -------- -------- ------- -------- ---
  :DM
  Set CH1=%DM1%
  Set CH2=%DM2%
  Set CH3=%DM3%
  Set CH4=%DM4%
  Set CH5=%DM5%
  Set CH6=%DM6%
  Set CH7=%DM7%
  Set CH8=%DM8%
  Set CH9=%DM9%
  Set CH10=%DM10%
  Set CH11=%DM11%
  Set CH12=%DM12%
  Goto END

:END
