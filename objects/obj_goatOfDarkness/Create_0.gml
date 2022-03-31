/// initialize
player = false;
friend = false;

ai = 0;

name = "Goat of Darkness";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 14;
frt = 12;
dex = 4;
agi = 15;
int = 7;
wis = 8;
cha = 7;
spr = 5;
lvl = 40;

xp = 7;

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
ds_list_add(abis, 420);
ds_list_add(abis, 425);
ds_list_add(powers, 218);
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

maxHp = 56;
curHp = 56;

//roll initiative
init = irandom_range(1,wait);

randLoot = random_range(0,100);

if(randLoot >= 50 && randLoot < 90)
{
	ds_list_add(global.loot, 1224);
}
else if(randLoot >= 90){
	ds_list_add(global.loot, 1188);
}
creatureType = [1,13];
//stealables
stealIt = -1;
randLoot = random_range(0,100);
if(randLoot >= 80)
{
	stealIt = 1153;
}


atkRange = 0;