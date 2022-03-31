/// initialize
player = false;
friend = false;

ai = 0;

name = "Bilge Rat";
abName = "Bilge Rat";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 15;
frt = 16;
dex = 10;
agi = 15;
int = 14;
wis = 12;
cha = 14;
spr = 8;
lvl = 5;

xp = 100;

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


ds_list_add(powers, 206);
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

maxHp = 1000;
curHp = 1000;

//roll initiative
init = irandom_range(1,wait);

randLoot = random_range(0,100);

if(randLoot >= 0 && randLoot < 100)
{
	ds_list_add(global.loot, 1210);
}

creatureType = [1,-1];
//stealables
stealIt = -1;
randLoot = random_range(0,100);
if(randLoot <= 100)
{
	stealIt = 1231;
}

atkRange = 0;