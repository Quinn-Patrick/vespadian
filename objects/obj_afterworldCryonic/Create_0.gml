/// initialize
player = false;
friend = false;

ai = 0;

name = "Afterworld Cryonic";
abName = "Afterworld Cryonic";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 20;
frt = 35;
dex = 35;
agi = 35;
int = 25;
wis = 55;
cha = 33;
spr = 80;
lvl = 40;

xp = 0;

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

ds_list_add(powers, 339);
ds_list_add(abis, 407);
ds_list_add(abis, 412);
setEnStats(id);
//ds_list_add(powers, 402);

//initialize status conditions
for(i = 50; i > 0; i--)
{
	conds[i] = 0;
}
conds[8] = 60;



pDef = 50

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

maxHp = 1800;
curHp = 1800;

//roll initiative
init = irandom_range(1,wait);

randLoot = random_range(0,100);

creatureType = [9,-1];

//stealables
stealIt = -1;
randLoot = random_range(0,100);


atkRange = 0;