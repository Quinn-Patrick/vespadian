/// initialize
player = false;
friend = false;

ai = 0;

name = "Skeleknight";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 23;
frt = 14;
dex = 10;
agi = 15;
int = 2;
wis = 4;
cha = 2;
spr = 14;
lvl = 10;

xp = 60;

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

curHp = 210;
maxHp = 210;
//roll initiative
init = irandom_range(1,wait);
for(i = 0; i < global.lootAttempts; i++){

	randLoot = random_range(0,100);

	if(randLoot >= 77 && randLoot < 90)
	{
		ds_list_add(global.loot, 1176);
	}
	else if (randLoot >= 90)
	{
		ds_list_add(global.loot, 7);
	}
}
creatureType = [16,-1];
//stealables
stealIt = -1;
randLoot = random_range(0,100);
if(randLoot >= 50)
{
	stealIt = 5;
}

atkRange = 0;