/// initialize
player = false;
friend = false;

ai = 7;

switcher = 0;

name = "Cryogoyle";
abName = "Cryogoyle";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 14;
frt = 12;
dex = 4;
agi = 20;
int = 12;
wis = 12;
cha = 10;
spr = 15;
lvl = 10;

xp = 200;

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
ds_list_add(abis, 402);
ds_list_add(abis, 405);
ds_list_add(abis, 407);
ds_list_add(abis, 412);
ds_list_add(powers, 326);
ds_list_add(powers, 336);
ds_list_add(powers, 307);
//ds_list_add(powers, 310);
setEnStats(id);
//ds_list_add(powers, 402);

//initialize status conditions
for(i = 50; i > 0; i--)
{
	conds[i] = 0;
}



pDef = 10

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

maxHp = 2200;
curHp = 2200;

//roll initiative
init = irandom_range(1,wait);

randLoot = random_range(0,100);

creatureType = [9,11];

//stealables
stealIt = -1;
randLoot = random_range(0,100);
stealIt = 1184;
ds_list_add(global.loot, 1207);

atkRange = 0;