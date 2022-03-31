/// initialize
player = false;
friend = false;

ai = 0;

switcher = 0;

name = "Mythril Golem";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 68;
frt = 99;
dex = 48;
agi = 55;
int = 50;
wis = 58;
cha = 18;
spr = 44;
lvl = 5;

xp = 2200;

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
ds_list_add(abis, 409);
ds_list_add(abis, 412);
ds_list_add(abis, 415);
ds_list_add(abis, 418);
ds_list_add(abis, 420);
ds_list_add(abis, 424);
ds_list_add(abis, 426);

ds_list_add(abis, 402);
ds_list_add(abis, 404);

ds_list_add(powers, 342);
ds_list_add(powers, 340);
setEnStats(id);
//initialize status conditions
for(i = 50; i > 0; i--)
{
	conds[i] = 0;
}


pDef = 110;

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

maxHp = 19335;
curHp = 19335;

//roll initiative
init = irandom_range(1,wait);
for(i = 0; i < global.lootAttempts; i++){
	randLoot = random_range(0,100);

	if(randLoot >= 50)
	{
		ds_list_add(global.loot, 1274);
	}
	randLoot = random_range(0,5);
	for(j = 0; j < randLoot+1; j++){
		ds_list_add(global.loot, 1180);
	}
}
creatureType = [17,-1];

//stealables
stealIt = -1;
randLoot = random_range(0,100);
if(randLoot >= 25)
{
	stealIt = 1158;
}

atkRange = 0;