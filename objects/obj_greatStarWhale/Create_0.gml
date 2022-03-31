/// initialize
player = false;
friend = false;

ai = 15;

switcher = 0;
phase = 0;

name = "Great Star Whale";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 35;
frt = 50;
dex = 30;
agi = 28;
int = 26;
wis = 49;
cha = 2;
spr = 10;
lvl = 5;

xp = 2500;

spellAbi = int;
pDef = 25;
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
ds_list_add(abis, 403);
ds_list_add(abis, 406);

ds_list_add(powers, 333); //0, slow
ds_list_add(powers, 408); //1, mass sleep
ds_list_add(powers, 324); //2, hasten

ds_list_add(powers, 325); //3, firestorm
ds_list_add(powers, 326); //4, blizzard
ds_list_add(powers, 327); //5, lightning bolt
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


//roll initiative
init = irandom_range(1,wait);
for(i = 0; i < global.lootAttempts; i++){
	randLoot = random_range(0,100);
	ds_list_add(global.loot, 1212);
	ds_list_add(global.loot, 1186);
	ds_list_add(global.loot, 1187);
}

maxHp = 40000;
curHp = 40000;

creatureType = [5,-1];
//stealables
stealIt = -1;
randLoot = random_range(0,100);

stealIt = 1231;


atkRange = 0;