/// initialize
player = false;
friend = false;

ai = 2;
switcher = 0;
name = "Sinister Tide";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 55;
frt = 25;
dex = 48;
agi = 72;
int = 8;
wis = 28;
cha = 12;
spr = 49;
lvl = 5;

xp = 1000;

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

ds_list_add(powers, 448);

ds_list_add(abis, 413);
ds_list_add(abis, 410);
ds_list_add(abis, 409);

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

pDef = 60;

maxHp = 9689;
curHp = 9689;
//roll initiative
init = irandom_range(1,wait);
for(i = 0; i < global.lootAttempts; i++){
	randLoot = random_range(0,100);

	if(randLoot >= 60 && randLoot < 95)
	{
		ds_list_add(global.loot, 1295);
	}
	else if (randLoot >= 95)
	{
		ds_list_add(global.loot, 1213);
	}
}
creatureType = [1,-1];
//stealables
stealIt = -1;
randLoot = random_range(0,100);
if(randLoot >= 80)
{
	stealIt = 922;
}

atkRange = 0;