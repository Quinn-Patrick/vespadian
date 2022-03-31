/// initialize
player = false;
friend = false;

ai = 0;

name = "Star Gazer";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 10;
frt = 16;
dex = 24;
agi = 22;
int = 21;
wis = 32;
cha = 22;
spr = 34;
lvl = 5;

xp = 625;

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
ds_list_add(abis, 422);
ds_list_add(abis, 420);
ds_list_add(powers, 210);
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

maxHp = 2217;
curHp = 2217;

//roll initiative
init = irandom_range(1,wait);

randLoot = random_range(0,100);

if(randLoot >= 70 && randLoot < 85)
{
	ds_list_add(global.loot, 1156);
}
else if (randLoot >= 85)
{
	ds_list_add(global.loot, 1186);
}
creatureType = [12,-1];
//stealables
stealIt = -1;
randLoot = random_range(0,100);
if(randLoot >= 95)
{
	stealIt = 911;
}

atkRange = 0;