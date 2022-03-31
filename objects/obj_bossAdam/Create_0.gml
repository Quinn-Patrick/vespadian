/// initialize
player = false;
friend = false;

ai = 13;

switcher = 0;
meteorCount = 4;

name = "Ortega";
abName = "Ortega";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 60;
frt = 46;
dex = 58;
agi = 33;
int = 46;
wis = 60;
cha = 49;
spr = 80;
lvl = 10;

xp = 15000;

spellAbi = int;

eq[0] = 12;
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
ds_list_add(abis, 406);
ds_list_add(abis, 420);
ds_list_add(abis, 403);
ds_list_add(abis, 404);

ds_list_add(powers, 217);
ds_list_add(powers, 427);
ds_list_add(powers, 428);
ds_list_add(powers, 429);
//ds_list_add(powers, 310);
setEnStats(id);
//ds_list_add(powers, 402);

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

maxHp = 100000;
curHp = 100000;



//roll initiative
init = irandom_range(1,wait);

randLoot = random_range(0,100);

creatureType = [0,-1];

//stealables
stealIt = -1;
randLoot = random_range(0,100);
stealIt = 1215;
ds_list_add(global.loot, 904);

atkRange = 2;