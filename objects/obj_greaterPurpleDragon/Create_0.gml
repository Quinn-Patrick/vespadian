/// initialize
player = false;
friend = false;

ai = 0;

name = "Greater Purple Dragon";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 62;
frt = 48;
dex = 70;
agi = 68;
int = 67;
wis = 75;
cha = 70;
spr = 73;
lvl = 5;

xp = 4000;

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
ds_list_add(abis, 427);

ds_list_add(abis, 405);
ds_list_add(abis, 6);

ds_list_add(abis, 205);

ds_list_add(powers, 446);
ds_list_add(powers, 451);
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

maxHp = 99880;
curHp = 99880;

//roll initiative
init = irandom_range(1,wait);
for(i = 0; i < global.lootAttempts; i++){
	randLoot = random_range(0,100);
	ds_list_add(global.loot, 1193);
	if(randLoot >= 50)
	{
		ds_list_add(global.loot, 1240);
	}
	randLoot = random_range(0,100);
	if(randLoot >= 50)
	{
		ds_list_add(global.loot, 1240);
	}
	
	
	randLoot = random_range(0,100);
	if(randLoot >= 50)
	{
		ds_list_add(global.loot, 1240);
	}
	
	randLoot = random_range(0,100);
	if (randLoot >= 75)
	{
		ds_list_add(global.loot, 1188);
	}
	randLoot = random_range(0,100);
	if (randLoot >= 75)
	{
		ds_list_add(global.loot, 1188);
	}
}
creatureType = [4,-1];
//stealables
stealIt = -1;
randLoot = random_range(0,100);

stealIt = 398;


atkRange = 0;