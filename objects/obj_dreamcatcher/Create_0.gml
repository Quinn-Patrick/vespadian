/// initialize
player = false;
friend = false;

ai = 6;

switcher = 0;

name = "Dreamcatcher";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 62;
frt = 48;
dex = 50;
agi = 45;
int = 63;
wis = 70;
cha = 45;
spr = 70;
lvl = 10;

xp = 6000;

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

ds_list_add(powers, 451);
ds_list_add(powers, 219);
//ds_list_add(powers, 310);

ds_list_add(abis, 401);

ds_list_add(abis, 402);
ds_list_add(abis, 405);
setEnStats(id);
//initialize status conditions
for(i = 50; i > 0; i--)
{
	conds[i] = 0;
}



pDef = 35;

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

maxHp = 85000;
curHp = 85000;
creatureType = [15,-1];
//roll initiative
init = irandom_range(1,wait);

randLoot = random_range(0,100);



//stealables
stealIt = -1;
randLoot = random_range(0,100);


atkRange = 0;