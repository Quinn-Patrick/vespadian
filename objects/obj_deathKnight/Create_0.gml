/// initialize
player = false;
friend = false;

ai = 0;

name = "Death Knight";
abName = "Death Knight";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 70;
frt = 40;
dex = 62;
agi = 65;
int = 45;
wis = 80;
cha = 63;
spr = 37;
lvl = 10;

xp = 1500;

spellAbi = int;

eq[0] = 5;
eq[1] = 0;
eq[2] = 0;
eq[3] = 0;
eq[4] = 0;
eq[5] = 0;



hitsThrough = 0;

powers = ds_list_create();
abis = ds_list_create();
ds_list_add(abis, 419);
ds_list_add(abis, 423);
ds_list_add(abis, 451);
setEnStats(id);
//initialize status conditions
for(i = 50; i > 0; i--)
{
	conds[i] = 0;
}

pDef = 60;


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

	if(randLoot >= 50 && randLoot < 98)
	{
		ds_list_add(global.loot, 1176);
	}
	else if (randLoot >= 98)
	{
		ds_list_add(global.loot, 1214);
	}
}
creatureType = [16,-1];
//stealables
stealIt = -1;
randLoot = random_range(0,100);
if(randLoot >= 50)
{
	stealIt = 929;
}

atkRange = 0;