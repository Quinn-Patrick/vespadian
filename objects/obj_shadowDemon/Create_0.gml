/// initialize
player = false;
friend = false;

ai = 0;

name = "Shadow Demon";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 45;
frt = 22;
dex = 53;
agi = 60;
int = 42;
wis = 48;
cha = 56;
spr = 33;
lvl = 10;

xp = 480;

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
ds_list_add(abis, 424);
ds_list_add(abis, 450);

ds_list_add(abis, 408);
ds_list_add(abis, 411);
ds_list_add(abis, 414);

ds_list_add(abis, 402);
ds_list_add(abis, 403);
ds_list_add(abis, 404);
ds_list_add(abis, 405);

ds_list_add(powers, 427);
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

curHp = 2355;
maxHp = 2355;
//roll initiative
init = irandom_range(1,wait);
for(i = 0; i < global.lootAttempts; i++){
	randLoot = random_range(0,100);

	if(randLoot >= 40 && randLoot < 95)
	{
		ds_list_add(global.loot, 1244);
	}
	else if (randLoot >= 95)
	{
		ds_list_add(global.loot, 1206);
	}
}
creatureType = [13,-1];
//stealables
stealIt = -1;
randLoot = random_range(0,100);
if(randLoot >= 70)
{
	stealIt = 925;
}

atkRange = 0;