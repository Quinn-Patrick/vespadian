/// initialize
player = false;
friend = false;

ai = 0;

name = "Skeleton";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 9;
frt = 12;
dex = 6;
agi = 14;
int = 2;
wis = 4;
cha = 2;
spr = 14;
lvl = 10;

xp = 40;

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
ds_list_add(abis, 419);
ds_list_add(abis, 423);
//initialize status conditions
for(i = 50; i > 0; i--)
{
	conds[i] = 0;
}
setEnStats(id);

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

curHp = 75;
maxHp = 75;
//roll initiative
init = irandom_range(1,wait);

randLoot = random_range(0,100);

if(randLoot >= 83 && randLoot < 90)
{
	ds_list_add(global.loot, 1176);
}
else if (randLoot >= 90)
{
	ds_list_add(global.loot, 7);
}
creatureType = [14,-1];
//stealables
stealIt = -1;
randLoot = random_range(0,100);
if(randLoot >= 50)
{
	stealIt = 1156;
}

atkRange = 0;