/// initialize
player = false;
friend = false;

ai = 18;

switcher = 0;

name = "Steel Golem";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 58;
frt = 90;
dex = 35;
agi = 30;
int = 15;
wis = 46;
cha = 10;
spr = 52;
lvl = 5;

xp = 900;

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

ds_list_add(abis, 412);

ds_list_add(abis, 418);
ds_list_add(abis, 421);
ds_list_add(abis, 424);
ds_list_add(abis, 427);
ds_list_add(abis, 402);

ds_list_add(powers, 324);
ds_list_add(powers, 322);
setEnStats(id);
//initialize status conditions
for(i = 50; i > 0; i--)
{
	conds[i] = 0;
}


pDef = 80;

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

maxHp = 12865;
curHp = 12865;

//roll initiative
init = irandom_range(1,wait);
for(i = 0; i < global.lootAttempts; i++){
	randLoot = random_range(0,100);

	if(randLoot >= 60)
	{
		ds_list_add(global.loot, 1274);
	}
	randLoot = random_range(0,5);
	for(j = 0; j < randLoot+1; j++){
		ds_list_add(global.loot, 1179);
	}
}
creatureType = [17,-1];

//stealables
stealIt = -1;
randLoot = random_range(0,100);
if(randLoot >= 50)
{
	stealIt = 1158;
}

atkRange = 0;