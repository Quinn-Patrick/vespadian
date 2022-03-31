/// initialize
player = false;
friend = false;

ai = 0;

name = "Bomber Bug";
abName = "Bomber Bug";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 8;
frt = 6;
dex = 14;
agi = 15;
int = 6;
wis = 9;
cha = 12;
spr = 13;
lvl = 5;

xp = 15;

spellAbi = int;

eq[0] = 0;
eq[1] = 0;
eq[2] = 0;
eq[3] = 0;
eq[4] = 0;
eq[5] = 0;



hitsThrough = 0;

powers = ds_list_create();
abis = ds_list_create();
ds_list_add(abis, 408);
ds_list_add(abis, 410);
ds_list_add(powers, 407);
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

maxHp = 89;
curHp = 89;

//roll initiative
init = irandom_range(1,wait);

randLoot = random_range(0,100);

if(randLoot >= 30 && randLoot < 90)
{
	ds_list_add(global.loot, 1218);
}
else if (randLoot >= 90)
{
	ds_list_add(global.loot, 1183);
}
creatureType = [2,7];
//stealables
stealIt = -1;
randLoot = random_range(0,100);
if(randLoot >= 60)
{
	stealIt = 1198;
}

atkRange = 0;