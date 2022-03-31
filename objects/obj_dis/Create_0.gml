/// initialize
player = false;
friend = false;

ai = 1;

aiPhase = 0;
switcher = -1;

name = "Dis";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 37;
frt = 60;
dex = 20;
agi = 60;
int = 10;
wis = 40;
cha = 42;
spr = 80;
lvl = 40;

xp = 0;

spellAbi = int;

eq[0] = 1;
eq[1] = 0;
eq[2] = 0;
eq[3] = 0;
eq[4] = 0;
eq[5] = 0;



hitsThrough = 0;

powers = ds_list_create();
abis = ds_list_create();

ds_list_add(powers, 338);
ds_list_add(powers, 339);
ds_list_add(powers, 340);
//ds_list_add(powers, 310);

//ds_list_add(powers, 402);
setEnStats(id);
//initialize status conditions
for(i = 50; i > 0; i--)
{
	conds[i] = 0;
}

conds[7] = 99;
conds[8] = -99;

pDef = 40

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

maxHp = 45000;
curHp = 45000;

//roll initiative
init = irandom_range(1,wait);

randLoot = random_range(0,100);

creatureType = [11,-1];

//stealables
stealIt = -1;
randLoot = random_range(0,100);


atkRange = 0;