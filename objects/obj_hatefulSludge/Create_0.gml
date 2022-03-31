/// initialize
player = false;
friend = false;

ai = 0;

name = "Hateful Sludge";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 26;
frt = 35;
dex = 16;
agi = 14;
int = 2;
wis = 10;
cha = 2;
spr = 17;
lvl = 5;

xp = 200;

spellAbi = int;
pDef = 16;
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
ds_list_add(abis, 415);

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

curHp = 1325;
maxHp = 1325;

//roll initiative
init = irandom_range(1,wait);
for(i = 0; i < global.lootAttempts; i++){
	randLoot = random_range(0,100);

	if(randLoot >= 20 && randLoot < 95)
	{
		ds_list_add(global.loot, 1220);
	}
	else if (randLoot >= 95)
	{
		ds_list_add(global.loot, 1168);
	}
}
creatureType = [5,-1];
//stealables
stealIt = -1;
randLoot = random_range(0,100);
if(randLoot >= 20)
{
	stealIt = 1159;
}

atkRange = 0;