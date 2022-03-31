/// initialize
player = false;
friend = false;

ai = 0;

name = "Triceratops";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 52;
frt = 50;
dex = 40;
agi = 45;
int = 4;
wis = 34;
cha = 4;
spr = 8;
lvl = 5;

xp = 650;

spellAbi = int;

eq[0] = 11;
eq[1] = 0;
eq[2] = 0;
eq[3] = 0;
eq[4] = 0;
eq[5] = 0;



hitsThrough = 0;

powers = ds_list_create();
abis = ds_list_create();
ds_list_add(abis, 410);



ds_list_add(abis, 402);
ds_list_add(abis, 448);

ds_list_add(powers, 3);
ds_list_add(powers, 437);
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

maxHp = 9685;
curHp = 9685;

//roll initiative
init = irandom_range(1,wait);
for(i = 0; i < global.lootAttempts; i++){
	randLoot = random_range(0,100);

	if(randLoot >= 30 && randLoot < 80)
	{
		ds_list_add(global.loot, 1269);
	}
	else if (randLoot >= 80)
	{
		randLoot2 = random_range(0,100);
		if(randLoot2 < 70)ds_list_add(global.loot, 1210);
		else ds_list_add(global.loot, 1208);
	}
}
creatureType = [1,-1];
//stealables
stealIt = -1;
for(i = 0; i < global.lootAttempts; i++){
	randLoot = random_range(0,100);
	if(randLoot >= 80)
	{
		stealIt = 1181;
	}
}

atkRange = 0;