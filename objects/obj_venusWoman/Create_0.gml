/// initialize
player = false;
friend = false;

ai = 0;

name = "Venus Woman";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 20;
frt = 20;
dex = 99;
agi = 99;
int = 20;
wis = 99;
cha = 20;
spr = 99;
lvl = 5;

xp = 4000;

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
//initialize status conditions
for(i = 50; i > 0; i--)
{
	conds[i] = 0;
}
conds[7] = -5;


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

maxHp = 20000;
curHp = 20000;

//roll initiative
init = irandom_range(1,wait);

randLoot = random_range(0,100);


ds_list_add(global.loot, 1298);


creatureType = [12,-1];
//stealables
stealIt = -1;
randLoot = random_range(0,100);

stealIt = 1212;

stealIt = 920;

atkRange = 0;