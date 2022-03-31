/// initialize
player = false;
friend = false;

ai = 0;

name = "XP Man";
abName = "XP Man";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 1;
frt = 1;
dex = 1;
agi = 1;
int = 1;
wis = 1;
cha = 1;
spr = 1;
lvl = 1;

xp = 530604;

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

//ds_list_add(powers, 402);
setEnStats(id);
//initialize status conditions
for(i = 50; i > 0; i--)
{
	conds[i] = 0;
}
conds[7] = -5;


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

maxHp = 1;
curHp = 1;

//roll initiative
init = irandom_range(1,wait);

randLoot = random_range(0,100);

creatureType = [8,-1];

//stealables
stealIt = -1;
randLoot = random_range(0,100);


atkRange = 0;