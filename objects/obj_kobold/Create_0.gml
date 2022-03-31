/// initialize
player = false;
friend = false;

ai = 0;

name = "Kobold";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 8;
frt = 8;
dex = 12;
agi = 12;
int = 4;
wis = 10;
cha = 6;
spr = 8;
lvl = 5;

xp = 5;

spellAbi = int;

eq[0] = 4;
eq[1] = 0;
eq[2] = 0;
eq[3] = 0;
eq[4] = 0;
eq[5] = 0;

setEnStats(id);

hitsThrough = 0;

powers = ds_list_create();
abis = ds_list_create();

ds_list_add(powers, 401);

//initialize status conditions
for(i = 50; i > 0; i--)
{
	conds[i] = 0;
}

pAtkEff = pAtk+conds[1];
pDefEff = pDef+conds[2];
spdEff = spd+conds[3];
hitEff = hit+conds[4];
evaEff = eva+conds[5];
mAtkEff = mAtk+conds[6];
dmAtkEff = dmAtk+conds[6];
hResEff = hRes+conds[7];
cResEff = cRes+conds[8];
eResEff = eRes+conds[9];
pResEff = pRes+conds[10];
aResEff = aRes+conds[11];
vResEff = vRes+conds[12];
mResEff = mRes+conds[13];


//roll initiative
init = irandom_range(1,wait);

//loot
randLoot = random_range(0,100);

if(randLoot >= 50 && randLoot < 80)
{
	ds_list_add(global.loot, 1163);
}
else if (randLoot >= 80 && randLoot < 95)
{
	ds_list_add(global.loot, 4);
}
else if (randLoot >= 95)
{
	ds_list_add(global.loot, 1164);
}
creatureType = [0,-1];
//stealables
stealIt = -1;
randLoot = random_range(0,100);
if(randLoot >= 50)
{
	stealIt = 1152;
}

atkRange = 0;