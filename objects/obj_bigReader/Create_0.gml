/// initialize
player = false;
friend = false;

ai = 10;

switcher = 0;
hasBoostedResistance = 0;

name = "Big Reader";
abName = "Big Reader";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 14;
frt = 20;
dex = 20;
agi = 21;
int = 25;
wis = 22;
cha = 10;
spr = 9;
lvl = 10;

xp = 400;

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

ds_list_add(powers, 201);
for(i = 413; i < 426; i++){
	ds_list_add(powers, i);
}
//ds_list_add(powers, 310);

ds_list_add(abis, 211);

ds_list_add(abis, 402);
ds_list_add(abis, 405);
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

maxHp = 4800
curHp = 4800

//roll initiative
init = irandom_range(1,wait);

randLoot = random_range(0,100);

ds_list_add(global.loot, 1212);
creatureType = [14,-1];
//stealables
stealIt = -1;
randLoot = random_range(0,100);

stealIt = 1230;

atkRange = 0;