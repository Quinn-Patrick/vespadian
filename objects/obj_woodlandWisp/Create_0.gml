/// initialize
player = false;
friend = false;

ai = 0;

name = "Woodland Wisp";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 2;
frt = 4;
dex = 16;
agi = 14;
int = 3;
wis = 9;
cha = 5;
spr = 13;
lvl = 5;

xp = 32;

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

ds_list_add(abis, 204);
ds_list_add(abis, 420);
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

maxHp = 33;
curHp = 33;

//roll initiative
init = irandom_range(1,wait);

randLoot = random_range(0,100);


if (randLoot >= 80)
{
	ds_list_add(global.loot, 1186);
}
creatureType = [14,10];
//stealables
stealIt = -1;
randLoot = random_range(0,100);
if(randLoot >= 50)
{
	stealIt = 1156;
}

atkRange = 0;