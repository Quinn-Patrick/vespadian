/// initialize
player = false;
friend = false;

ai = 0;

name = "Yellowjacket";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 40;
frt = 12;
dex = 50;
agi = 78;
int = 8;
wis = 24;
cha = 4;
spr = 16;
lvl = 5;

xp = 400;

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
ds_list_add(abis, 407);
ds_list_add(abis, 417);

ds_list_add(abis, 402);
setEnStats(id);
//ds_list_add(powers, 402);

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

maxHp = 12340;
curHp = 12340;

//roll initiative
init = irandom_range(1,wait);
for(i = 0; i < global.lootAttempts; i++){
	randLoot = random_range(0,100);

	if(randLoot >= 30 && randLoot < 80)
	{
		ds_list_add(global.loot, 1173);
	}
	else if (randLoot >= 80)
	{
		ds_list_add(global.loot, 1159);
	}
}
creatureType = [1,-1];
//stealables
stealIt = -1;
randLoot = random_range(0,100);
if(randLoot >= 80)
{
	stealIt = 129;
}

atkRange = 0;