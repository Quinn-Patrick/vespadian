/// initialize
player = false;
friend = false;

ai = 0;

name = "Big Squid";
abName = "Big Squid";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 55;
frt = 40;
dex = 52;
agi = 50;
int = 8;
wis = 50;
cha = 16;
spr = 36;
lvl = 5;

xp = 1000;

spellAbi = int;
pDef = 0;
eq[0] = 5;
eq[1] = 0;
eq[2] = 0;
eq[3] = 0;
eq[4] = 0;
eq[5] = 0;



hitsThrough = 0;

powers = ds_list_create();
abis = ds_list_create();

ds_list_add(powers, 442);

ds_list_add(abis, 442);
ds_list_add(abis, 408);
ds_list_add(abis, 4);
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

maxHp = 12564;
curHp = 12564;
//roll initiative
init = irandom_range(1,wait);
for(i = 0; i < global.lootAttempts; i++){
	randLoot = random_range(0,100);

	if(randLoot >= 50 && randLoot < 99)
	{
		ds_list_add(global.loot, 1280);
	}
	else if (randLoot >= 90)
	{
		ds_list_add(global.loot, 1208);
	}
}
creatureType = [1,-1];
//stealables
stealIt = -1;
randLoot = random_range(0,100);
if(randLoot >= 50)
{
	stealIt = 1159;
}

atkRange = 0;