/// initialize
player = false;
friend = false;

ai = 11;

switcher = 0;
hasBoostedResistance = 0;

name = "Chariot Automaton";
abName = "Chariot Automaton";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 48;
frt = 65;
dex = 50;
agi = 40;
int = 20;
wis = 45;
cha = 4;
spr = 36;
lvl = 10;

xp = 6000;

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
hasStanced = false;
ds_list_add(powers, 105);
ds_list_add(powers, 12);
ds_list_add(powers, 2);
//ds_list_add(powers, 310);



ds_list_add(abis, 429);
ds_list_add(abis, 403);
ds_list_add(abis, 402);
ds_list_add(abis, 405);
ds_list_add(abis, 404);
setEnStats(id);
//initialize status conditions
for(i = 50; i > 0; i--)
{
	conds[i] = 0;
}



pDef = 30;

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

maxHp = 65000;
curHp = 65000;

//roll initiative
init = irandom_range(1,wait);

randLoot = random_range(0,100);

ds_list_add(global.loot, 1212);

creatureType = [15,-1];
//stealables
stealIt = -1;
randLoot = random_range(0,100);

stealIt = 12;

atkRange = 0;