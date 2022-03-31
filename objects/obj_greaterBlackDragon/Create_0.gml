/// initialize
player = false;
friend = false;

ai = 19;

name = "Greater Black Dragon";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

switcher = 0;

str = 72;
frt = 85;
dex = 60;
agi = 63;
int = 66;
wis = 52;
cha = 49;
spr = 70;
lvl = 5;

xp = 4000;

spellAbi = int;

eq[0] = 129;
eq[1] = 0;
eq[2] = 0;
eq[3] = 0;
eq[4] = 0;
eq[5] = 0;



hitsThrough = 0;

powers = ds_list_create();
abis = ds_list_create();
ds_list_add(abis, 425);
ds_list_add(abis, 418);
ds_list_add(abis, 402);
ds_list_add(abis, 405);
ds_list_add(abis, 8);

ds_list_add(powers, 450);
ds_list_add(powers, 444);
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

maxHp = 86995;
curHp = 86995;

//roll initiative
init = irandom_range(1,wait);
for(i = 0; i < global.lootAttempts; i++){
	randLoot = random_range(0,100);
	ds_list_add(global.loot, 1193);
	if(randLoot >= 50)
	{
		ds_list_add(global.loot, 1237);
	}
	randLoot = random_range(0,100);
	if(randLoot >= 50)
	{
		ds_list_add(global.loot, 1237);
	}
	
	
	randLoot = random_range(0,100);
	if(randLoot >= 50)
	{
		ds_list_add(global.loot, 1237);
	}
	
	randLoot = random_range(0,100);
	if (randLoot >= 75)
	{
		ds_list_add(global.loot, 1293);
	}
	randLoot = random_range(0,100);
	if (randLoot >= 75)
	{
		ds_list_add(global.loot, 1293);
	}
}
creatureType = [4,-1];
//stealables
stealIt = -1;
randLoot = random_range(0,100);

stealIt = 928;


atkRange = 0;