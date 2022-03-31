/// initialize
player = false;
friend = false;

ai = 3;

name = "Lord's Army Cadet";
abName = "Cadet";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 9;
frt = 10;
dex = 10;
agi = 15;
int = 8;
wis = 12;
cha = 8;
spr = 10;
lvl = 5;

xp = 30;

spellAbi = int;
pDef = 10;
eq[0] = 1;
eq[1] = 0;
eq[2] = 0;
eq[3] = 0;
eq[4] = 0;
eq[5] = 0;



hitsThrough = 0;

powers = ds_list_create();
abis = ds_list_create();
ds_list_add(abis, 407);


ds_list_add(powers, 215);
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

maxHp = 350;
curHp = 350;

//roll initiative
init = irandom_range(1,wait);

randLoot = random_range(0,100);


creatureType = [0,-1];
//stealables
stealIt = -1;
randLoot = random_range(0,100);
if(randLoot >= 50)
{
	stealIt = 1153;
}

atkRange = 0;