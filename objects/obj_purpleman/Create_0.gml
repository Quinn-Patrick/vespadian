/// initialize
player = false;
friend = false;

ai = 0;

name = "Purple Man";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 10;
frt = 30;
dex = 8;
agi = 8;
int = 8;
wis = 10;
cha = 8;
spr = 12;
lvl = 5;

xp = 70;

spellAbi = int;

eq[0] = 6;
eq[1] = 257;
eq[2] = 0;
eq[3] = 0;
eq[4] = 0;
eq[5] = 0;



hitsThrough = 0;

powers = ds_list_create();
abis = ds_list_create();
ds_list_add(abis, 413);
ds_list_add(abis, 426);
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

maxHp = 345;
curHp = 345;

//roll initiative
init = irandom_range(1,wait);
for(i = 0; i < global.lootAttempts; i++){
	randLoot = random_range(0,100);

	if(randLoot >= 30 && randLoot < 80)
	{
		ds_list_add(global.loot, 1170);
	}
	else if (randLoot >= 80)
	{
		ds_list_add(global.loot, 899);
	}
}
creatureType = [18,15];
//stealables
stealIt = -1;
randLoot = random_range(0,100);
if(randLoot >= 20)
{
	stealIt = 6;
}

atkRange = 0;