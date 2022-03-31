/// initialize
player = false;
friend = false;

ai = 2;

switcher = 0;

name = "Elder Bark";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 12;
frt = 20;
dex = 4;
agi = 6;
int = 12;
wis = 16;
cha = 13;
spr = 11;
lvl = 10;

xp = 40;

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

ds_list_add(powers, 405);
//ds_list_add(powers, 310);

//ds_list_add(powers, 402);
setEnStats(id);
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

maxHp = 2000;
curHp = 2000;

//roll initiative
init = irandom_range(1,wait);

randLoot = random_range(0,100);

creatureType = [3,-1];

//stealables
stealIt = -1;
randLoot = random_range(0,100);


atkRange = 0;