/// initialize
player = false;
friend = false;

ai = 0;

name = "MisterMist";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 16;
frt = 4;
dex = 18;
agi = 18;
int = 10;
wis = 12;
cha = 6;
spr = 14;
lvl = 5;

xp = 10;

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
setEnStats(id);
//ds_list_add(powers, 402);

//initialize status conditions
for(i = 50; i > 0; i--)
{
	conds[i] = 0;
}


pDef = 50;

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

maxHp = 44;
curHp = 44;

//roll initiative
init = irandom_range(1,wait);

randLoot = random_range(0,100);

if(randLoot > 30 && randLoot < 90){
	ds_list_add(global.loot, 1175);
}
else if(randLoot >= 90){
	ds_list_add(global.loot, 1204);
}
creatureType = [8,-1];

//stealables
stealIt = -1;
randLoot = random_range(0,100);

stealIt = 1208;


atkRange = 0;