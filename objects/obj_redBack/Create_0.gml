/// initialize
player = false;
friend = false;

ai = 0;

name = "Redback";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 50;
frt = 56;
dex = 52;
agi = 42;
int = 12;
wis = 24;
cha = 4;
spr = 20;
lvl = 15;

xp = 600;

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

ds_list_add(abis, 410);
ds_list_add(abis, 402);
ds_list_add(powers, 402);
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

maxHp = 9962;
curHp = 9962;

//roll initiative
init = irandom_range(1,wait);

randLoot = random_range(0,100);


for(i = 0; i < global.lootAttempts; i++){
	randLoot = random_range(0,100);

	if(randLoot >= 30 && randLoot < 60)
	{
		ds_list_add(global.loot, 1171);
		ds_list_add(global.loot, 1171);
	}
	else if (randLoot >= 60)
	{
		ds_list_add(global.loot, 1173);
		ds_list_add(global.loot, 1171);
		ds_list_add(global.loot, 1171);
		ds_list_add(global.loot, 1218);
	}
}
creatureType = [2,-1];

//stealables


randLoot = random_range(0,100);
if(randLoot >= 75)
{
	stealIt = 408;
}


atkRange = 0;