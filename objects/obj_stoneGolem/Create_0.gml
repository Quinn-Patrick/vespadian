/// initialize
player = false;
friend = false;

ai = 0;

name = "Stone Golem";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 28;
frt = 35;
dex = 17;
agi = 8;
int = 5;
wis = 18;
cha = 5;
spr = 20;
lvl = 5;

xp = 300;

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
ds_list_add(abis, 415);
ds_list_add(abis, 418);
ds_list_add(abis, 421);
ds_list_add(abis, 424);
ds_list_add(abis, 427);
ds_list_add(abis, 402);

ds_list_add(powers, 342);
//ds_list_add(powers, 402);
setEnStats(id);
//initialize status conditions
for(i = 50; i > 0; i--)
{
	conds[i] = 0;
}
conds[7] = -5;

pDef = 30;

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

maxHp = 4650;
curHp = 4650;

//roll initiative
init = irandom_range(1,wait);
for(i = 0; i < global.lootAttempts; i++){
	randLoot = random_range(0,100);

	if(randLoot >= 40)
	{
		ds_list_add(global.loot, 1263);
	}
}
creatureType = [17,-1];

//stealables
stealIt = -1;
randLoot = random_range(0,100);
if(randLoot >= 50)
{
	stealIt = 1157;
}

atkRange = 0;