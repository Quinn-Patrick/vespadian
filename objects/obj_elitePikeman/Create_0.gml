/// initialize
player = false;
friend = false;

ai = 0;

name = "Elite Pikeman";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 20;
frt = 12;
dex = 12;
agi = 14;
int = 10;
wis = 8;
cha = 10;
spr = 12;
lvl = 5;

xp = 110;

spellAbi = int;
pDef = 10;
eq[0] = 11;
eq[1] = 0;
eq[2] = 0;
eq[3] = 0;
eq[4] = 0;
eq[5] = 0;



hitsThrough = 0;

powers = ds_list_create();
abis = ds_list_create();
ds_list_add(abis, 407);
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

curHp = maxHp;

//roll initiative
init = irandom_range(1,wait);
for(i = 0; i < global.lootAttempts; i++){
	randLoot = random_range(0,100);

	if(randLoot >= 70 && randLoot < 99)
	{
		ds_list_add(global.loot, 1152);
	}
	else if (randLoot >= 99)
	{
		ds_list_add(global.loot, 1201);
	}
}
creatureType = [0,-1];
//stealables
stealIt = -1;
randLoot = random_range(0,100);
if(randLoot >= 50)
{
	stealIt = 1159;
}

atkRange = 1;