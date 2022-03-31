/// initialize
player = false;
friend = false;

ai = 19;

name = "Asura";
abName = "Asura";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

switcher = 0;

str = 75;
frt = 85;
dex = 72;
agi = 66;
int = 62;
wis = 48;
cha = 75;
spr = 58;
lvl = 5;

xp = 2900;

spellAbi = int;

eq[0] = 15;
eq[1] = 11;
eq[2] = 0;
eq[3] = 0;
eq[4] = 0;
eq[5] = 0;



hitsThrough = 0;

powers = ds_list_create();
abis = ds_list_create();

ds_list_add(abis, 426);
ds_list_add(abis, 417);
ds_list_add(abis, 411);
ds_list_add(abis, 408);

ds_list_add(powers, 13);
ds_list_add(powers, 441);
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

maxHp = 28100;
curHp = 28100;

//roll initiative
init = irandom_range(1,wait);

randLoot = random_range(0,100);

if(randLoot >= 20 && randLoot < 95)
{
	ds_list_add(global.loot, 1244);
}
else if (randLoot >= 95)
{
	ds_list_add(global.loot, 1182);
}
creatureType = [18,13];
//stealables
stealIt = -1;
randLoot = random_range(0,100);
if(randLoot >= 80)
{
	stealIt = 50;
}

atkRange = 0;