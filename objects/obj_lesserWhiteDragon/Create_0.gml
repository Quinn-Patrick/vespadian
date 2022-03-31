/// initialize
player = false;
friend = false;

ai = 17;

name = "Lesser White Dragon";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 42;
frt = 35;
dex = 62;
agi = 67;
int = 60;
wis = 55;
cha = 65;
spr = 63;
lvl = 5;

xp = 1200;

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
ds_list_add(abis, 421);
ds_list_add(abis, 413);

ds_list_add(abis, 207);

ds_list_add(powers, 449);
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

maxHp = 11386;
curHp = 11386;

//roll initiative
init = irandom_range(1,wait);

randLoot = random_range(0,100);

if(randLoot >= 30 && randLoot < 80)
{
	ds_list_add(global.loot, 1238);
}
else if (randLoot >= 80)
{
	ds_list_add(global.loot, 1186);
}
creatureType = [4,-1];
//stealables
stealIt = -1;
randLoot = random_range(0,100);
if(randLoot >= 60)
{
	stealIt = 396;
}

atkRange = 0;