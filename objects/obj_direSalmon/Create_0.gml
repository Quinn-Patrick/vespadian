/// initialize
player = false;
friend = false;

ai = 0;

name = "Dire Salmon";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 67;
frt = 65;
dex = 65;
agi = 60;
int = 8;
wis = 58;
cha = 16;
spr = 36;
lvl = 5;

xp = 1100;

spellAbi = int;
pDef = 10;
eq[0] = 5;
eq[1] = 0;
eq[2] = 0;
eq[3] = 0;
eq[4] = 0;
eq[5] = 0;



hitsThrough = 0;

powers = ds_list_create();
abis = ds_list_create();

ds_list_add(powers, 430);

ds_list_add(abis, 413);
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

maxHp = 12150;
curHp = 12150;
//roll initiative
init = irandom_range(1,wait);
for(i = 0; i < global.lootAttempts; i++){
	randLoot = random_range(0,100);

	if(randLoot >= 65 && randLoot < 98)
	{
		ds_list_add(global.loot, 1294);
	}
	else if (randLoot >= 98)
	{
		ds_list_add(global.loot, 1213);
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