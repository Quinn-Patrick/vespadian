/// initialize
player = false;
friend = false;

ai = 0;

name = "Yellow Man";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 33;
frt = 40;
dex = 25;
agi = 28;
int = 30;
wis = 35;
cha = 16;
spr = 24;
lvl = 5;

xp = 625;

spellAbi = int;

eq[0] = 6;
eq[1] = 257;
eq[2] = 0;
eq[3] = 0;
eq[4] = 0;
eq[5] = 0;



hitsThrough = 0;

powers = ds_list_create();
abis = ds_list_create();
ds_list_add(abis, 413);
ds_list_add(abis, 426);
setEnStats(id);
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

maxHp = 3110;
curHp = 3110;

//roll initiative
init = irandom_range(1,wait);

randLoot = random_range(0,100);

if(randLoot >= 90 && randLoot < 95)
{
	ds_list_add(global.loot, 1211);
}
else if (randLoot >= 95)
{
	ds_list_add(global.loot, 898);
}
creatureType = [18,15];
//stealables
stealIt = -1;
randLoot = random_range(0,100);
if(randLoot >= 95)
{
	stealIt = 1180;
}

atkRange = 0;