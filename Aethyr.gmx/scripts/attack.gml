en = argument0
stagger = irandom(99) + 1

loss = (att - en.def) + irandom(5)

if(en = player)
{
if(en.guard)
{
en.mp--
en.stam -= 2
loss -= round(player.def * 1.5)
}
if(player.dodging) loss = "miss"
}

if(loss <= 1) loss = 1
cri = irandom(99) + 1

if(cri <= crit)
{
if(en != player) loss *= global.critDmg
else loss *= 1.5
}

loss = round(loss)
if(loss != "miss") en.hp -= loss

if(en != player)
{
if(cri < crit) 
{
with(instance_create(en.x + irandom(10) - 5,en.y - 8,hurtText))
{
value = other.loss
crit = 1
}
}
else 
{
with(instance_create(en.x + irandom(20) - 10,en.y - 10,hurtText))
{
value = other.loss
crit = 0
}
}
}


if(loss < 100) repeat(irandom(loss)) instance_create(en.x+irandom(32) - 16,en.y+irandom(32) - 16,blood)
else if (loss >= 100 and loss < 1000) repeat(irandom(loss) / 10) instance_create(en.x+irandom(32) - 16,en.y+irandom(32) - 16,blood)
else repeat(irandom(loss) / 100) instance_create(en.x+irandom(32) - 16,en.y+irandom(32) - 16,blood)

if(stagger < 15) en.attTime -= 10

audio_sound_gain(hit,global.sfxVol-0.1,0)
audio_play_sound(hit,1,0)

if(en != player)
{
with(player)
{
combo++
comboDmg += other.loss
if(comboMax > 60) comboMax -= 10
if(combo % 10 = 0 and combo != 0) comboWorth += 0.2
comboTime = comboMax
if(runeName = "Vampirism") hp += round(other.loss / 10)
if(class = 1)
{
mp += round(other.loss/4)
mpEx += round(other.loss/4)
}
}
}

