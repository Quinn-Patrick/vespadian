/// initialize
player = false;
friend = false;

ai = 0;

name = "Bookworm";
abName = "Bookworm";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 49;
frt = 61;
dex = 36;
agi = 42;
int = 24;
wis = 24;
cha = 4;
spr = 22;
lvl = 5;

xp = 425;

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
ds_list_add(abis, 206);
ds_list_add(abis, 426);
ds_list_add(abis, 422);
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

maxHp = 10256;
curHp = 10256;

//roll initiative
init = irandom_range(1,wait);

randLoot = random_range(0,100);

if(randLoot >= 30 && randLoot < 90)
{
	ds_list_add(global.loot, 1220);
}
else if (randLoot >= 90)
{
	ds_list_add(global.loot, 1202);
}
creatureType = [2,-1];
//stealables
stealIt = -1;
randLoot = random_range(0,100);
if(randLoot >= 20)
{
	stealIt = 1154;
}

atkRange = 0;