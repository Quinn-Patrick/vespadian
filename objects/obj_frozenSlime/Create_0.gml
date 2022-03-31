/// initialize
player = false;
friend = false;

ai = 0;

name = "Frozen Slime";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 55;
frt = 80;
dex = 48;
agi = 20;
int = 4;
wis = 22;
cha = 4;
spr = 16;
lvl = 5;

xp = 800;

spellAbi = int;
pDef = 10;
eq[0] = 0;
eq[1] = 0;
eq[2] = 0;
eq[3] = 0;
eq[4] = 0;
eq[5] = 0;



hitsThrough = 0;

powers = ds_list_create();
abis = ds_list_create();

ds_list_add(abis, 455);
ds_list_add(abis, 415);
ds_list_add(abis, 411);
ds_list_add(abis, 203);
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

maxHp = 12411;
curHp = 12411;

//roll initiative
init = irandom_range(1,wait);
for(i = 0; i < global.lootAttempts; i++){
	randLoot = random_range(0,100);

	if(randLoot >= 80 && randLoot < 98)
	{
		ds_list_add(global.loot, 1184);
	}
	else if (randLoot >= 98)
	{
		ds_list_add(global.loot, 1281);
	}
}
creatureType = [5,-1];
//stealables
stealIt = -1;
randLoot = random_range(0,100);
if(randLoot >= 50)
{
	stealIt = 269;
}

atkRange = 0;