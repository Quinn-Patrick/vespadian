/// initialize
player = false;
friend = false;

ai = 4;

name = "Storm Terror";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 4;
frt = 12;
dex = 24;
agi = 10;
int = 22;
wis = 10;
cha = 14;
spr = 15;
lvl = 40;

xp = 250;

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
ds_list_add(abis, 415);

ds_list_add(powers, 327);
setEnStats(id);
//ds_list_add(powers, 402);

//initialize status conditions
for(i = 50; i > 0; i--)
{
	conds[i] = 0;
}



pDef = 10;

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

maxHp = 1115;
curHp = 1115;

//roll initiative
init = irandom_range(1,wait);

randLoot = random_range(0,100);

if(randLoot >= 50 && randLoot < 80)
{
	ds_list_add(global.loot, 1174);
}
else if(randLoot >= 80){
	ds_list_add(global.loot, 1185);
}
creatureType = [10,14];
//stealables
stealIt = -1;
randLoot = random_range(0,100);

if(randLoot >= 95) stealIt = 1247;


atkRange = 0;