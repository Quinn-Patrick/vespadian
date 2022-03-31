/// initialize
player = false;
friend = false;

ai = 21;

name = "Greater Red Dragon";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;
switcher = 0;

str = 80;
frt = 76;
dex = 56;
agi = 65;
int = 90;
wis = 49;
cha = 48;
spr = 59;
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
ds_list_add(abis, 410);
ds_list_add(abis, 409);
ds_list_add(abis, 202);

ds_list_add(abis, 8);

ds_list_add(powers, 440);
ds_list_add(powers, 430);
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

maxHp = 115745;
curHp = 115745;

//roll initiative
init = irandom_range(1,wait);
for(i = 0; i < global.lootAttempts; i++){
	randLoot = random_range(0,100);
	ds_list_add(global.loot, 1193);
	if(randLoot >= 50)
	{
		ds_list_add(global.loot, 1234);
	}
	randLoot = random_range(0,100);
	if(randLoot >= 50)
	{
		ds_list_add(global.loot, 1234);
	}
	
	
	randLoot = random_range(0,100);
	if(randLoot >= 50)
	{
		ds_list_add(global.loot, 1234);
	}
	
	randLoot = random_range(0,100);
	if (randLoot >= 75)
	{
		ds_list_add(global.loot, 1183);
	}
	randLoot = random_range(0,100);
	if (randLoot >= 75)
	{
		ds_list_add(global.loot, 1183);
	}
}
creatureType = [4,-1];
//stealables
stealIt = -1;
randLoot = random_range(0,100);

stealIt = 1245;


atkRange = 0;