Input_linii(TipVanzare, ValoareFaraTVA, ValoareTVA, ValoareDiscount)
{
setkeydelay,60,60
settitlematchmode 2
valoarefaratva := round(valoarefaratva, 2)
valoaretva := round(valoaretva, 2)
if (ValoareDiscount*1 = 0) or (ValoareDiscount*1 > 0)
{
send %TipVanzare%
send {tab 3}
send ^a
send %ValoareFaraTVA%

if (ValoareDiscount*1 > 0)
{
ValoareDiscount := round(ValoareDiscount * 100,2)
send %ValoareDiscount%
send {tab 2}
send ^a
send %ValoareTVA%
send {enter}
}
else
{
send {tab 3}
send ^a
send %ValoareTVA%
send {enter}
}
}

if (ValoareDiscount*1 < 0)
{
send %TipVanzare%
send {tab 3}
send ^a
send %ValoareFaraTVA%
send {tab 3}
send ^a
send %ValoareTVA%
send {tab}

send !a
sleep 500
send DISCOUNT
send {tab 2}
send ^a
send -1
send {tab}
ValoareDiscount := round(ValoareDiscount /1.19,2) * -1
send ^a
send %ValoareDiscount%
send {tab}
}
}



Input_linii_Taxareinversa(TipVanzare, ValoareFaraTVA, ValoareTVA, ValoareDiscount)
{
setkeydelay,60,60
valoarefaratva := round(valoarefaratva, 2)
valoaretva := round(valoaretva, 2)
if (ValoareDiscount*1 = 0) or (ValoareDiscount*1 > 0)
{
send %TipVanzare%
send {tab 3}
send ^a
send %ValoareFaraTVA%

if (ValoareDiscount*1 > 0)
{
ValoareDiscount := round(ValoareDiscount * 100,2)
send %ValoareDiscount%
send {tab 3}
send {space}
sleep 2000
send {Tab 3}
send {space}
sleep 400
send Masa lemnoasa
send !v
}
else
{
send {tab 4}
send {space}
sleep 2000
send {Tab 3}
send {space}
sleep 400
send Masa lemnoasa
send !v
}
}

if (ValoareDiscount*1 < 0)
{
send %TipVanzare%
send {tab 3}
send ^a
send %ValoareFaraTVA%
send {tab 4}
send {space}
sleep 2000
send {Tab 3}
send {space}
sleep 400
send Masa lemnoasa
send !v


send !a
sleep 500
send DISCOUNT
send {tab 2}
send ^a
send -1
send {tab}
ValoareDiscount := round(ValoareDiscount /1.19,2) * -1
send ^a
send %ValoareDiscount%
send {tab}
}
}

