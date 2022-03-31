/// initialize
player = false;
friend = false;

ai = 0;

name = "Ice Golem";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 48;
frt = 29;
dex = 35;
agi = 28;
int = 10;
wis = 62;
cha = 10;
spr = 32;
lvl = 5;

xp = 190;

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

ds_list_add(abis, 407);

ds_list_add(abis, 412);
ds_list_add(abis, 415);
ds_list_add(abis, 418);
ds_list_add(abis, 421);
ds_list_add(abis, 424);
ds_list_add(abis, 427);
ds_list_add(abis, 402);
ds_list_add(abis, 403);
ds_list_add(abis, 404);
ds_list_add(abis, 405);
ds_list_add(abis, 406);

ds_list_add(powers, 324);
//ds_list_add(powers, 402);
setEnStats(id);
//initialize status conditions
for(i = 50; i > 0; i--)
{
	conds[i] = 0;
}
conds[7] = -5;

pDef = 20;

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

maxHp = 11210;
curHp = 11210;

//roll initiative
init = irandom_range(1,wait);
for(i = 0; i < global.lootAttempts; i++){
	randLoot = random_range(0,100);

	if(randLoot >= 80)
	{
		ds_list_add(global.loot, 1263);
	}
	
	randLoot = random_range(0,100);
	
	if(randLoot >= 75)
	{
		ds_list_add(global.loot, 1184);
	}
	
	
	
}
creatureType = [17,-1];

//stealables
stealIt = -1;
randLoot = random_range(0,100);
if(randLoot >= 50)
{
	stealIt = 1154;
}

atkRange = 0;