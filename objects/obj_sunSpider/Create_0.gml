/// initialize
player = false;
friend = false;

ai = 0;

name = "Sun Spider";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 32;
frt = 24;
dex = 60;
agi = 58;
int = 35;
wis = 24;
cha = 4;
spr = 12;
lvl = 5;

xp = 425;

spellAbi = int;

eq[0] = 8;
eq[1] = 0;
eq[2] = 0;
eq[3] = 0;
eq[4] = 0;
eq[5] = 0;



hitsThrough = 0;

powers = ds_list_create();
abis = ds_list_create();
ds_list_add(abis, 410);
ds_list_add(abis, 408);
ds_list_add(powers, 402);
setEnStats(id);
//initialize status conditions
for(i = 50; i > 0; i--)
{
	conds[i] = 0;
}
conds[7] = -5;


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

maxHp = 3080;
curHp = 3080;

//roll initiative
init = irandom_range(1,wait);

for(i = 0; i < global.lootAttempts; i++){
	randLoot = random_range(0,100);

	if(randLoot >= 60 && randLoot < 96)
	{
		ds_list_add(global.loot, 1272);
	}
	else if (randLoot >= 96)
	{
		ds_list_add(global.loot, 1208);
	}
}
creatureType = [2,-1];
//stealables
stealIt = -1;
randLoot = random_range(0,100);
if(randLoot >= 50)
{
	stealIt = 1160;
}

atkRange = 0;