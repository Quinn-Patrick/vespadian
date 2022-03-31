/// initialize
player = false;
friend = false;

ai = 0;

name = "Feeble Glob";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 2;
frt = 4;
dex = 5;
agi = 4;
int = 2;
wis = 4;
cha = 2;
spr = 10;
lvl = 3;

xp = 17;

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
ds_list_add(abis, 415);
setEnStats(id);
//initialize status conditions
for(i = 50; i > 0; i--)
{
	conds[i] = 0;
}
//conds[8] = -99;
//conds[9] = 99;

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

randLoot = random_range(0,100);

if(randLoot >= 50 && randLoot < 99)
{
	ds_list_add(global.loot, 1166);
}
else if (randLoot >= 99)
{
	ds_list_add(global.loot, 1167);
}
creatureType = [5,-1];
//stealables
stealIt = -1;
randLoot = random_range(0,100);
if(randLoot >= 50)
{
	stealIt = 1159;
}

atkRange = 0;