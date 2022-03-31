/// initialize
player = false;
friend = false;

ai = 0;

name = "Lithomax";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 40;
frt = 30;
dex = 18;
agi = 2;
int = 2;
wis = 30;
cha = 2;
spr = 4;
lvl = 5;

xp = 550;

spellAbi = int;

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
ds_list_add(abis, 408);
ds_list_add(abis, 414);
ds_list_add(abis, 418);
ds_list_add(abis, 419);
ds_list_add(abis, 423);
ds_list_add(abis, 426);
setEnStats(id);
//initialize status conditions
for(i = 50; i > 0; i--)
{
	conds[i] = 0;
}


pDef = 40;

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

maxHp = 8235;
curHp = 8235;

//roll initiative
init = irandom_range(1,wait);

randLoot = random_range(0,100);

if(randLoot >= 30 && randLoot < 80)
{
	ds_list_add(global.loot, 1203);
}
else if (randLoot >= 80)
{
	randLoot2 = random_range(0,100);
	if(randLoot2 < 50)ds_list_add(global.loot, 1205);
	else if(randLoot2 < 75)ds_list_add(global.loot, 1204);
	else if(randLoot2 < 85)ds_list_add(global.loot, 1209);
	else if(randLoot2 < 93)ds_list_add(global.loot, 1206);
	else if(randLoot2 < 95)ds_list_add(global.loot, 1212);
	else if(randLoot2 < 97)ds_list_add(global.loot, 1213);
	else if(randLoot2 < 99)ds_list_add(global.loot, 1214);
	else ds_list_add(global.loot, 1215);
}
creatureType = [6,-1];
//stealables
stealIt = -1;
randLoot = random_range(0,100);
if(randLoot >= 20)
{
	stealIt = 20;
}

atkRange = 0;