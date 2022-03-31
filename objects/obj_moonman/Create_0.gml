/// initialize
player = false;
friend = false;

ai = 14;
switcher = 0;
name = "Lunar Watchman";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 14;
frt = 40;
dex = 20;
agi = 16;
int = 17;
wis = 20;
cha = 17;
spr = 30;
lvl = 5;

xp = 1000;

spellAbi = int;

eq[0] = 261;
eq[1] = 0;
eq[2] = 0;
eq[3] = 0;
eq[4] = 0;
eq[5] = 0;



hitsThrough = 0;

powers = ds_list_create();
abis = ds_list_create();
ds_list_add(abis, 420);

ds_list_add(powers, 209);
ds_list_add(powers, 218);
ds_list_add(powers, 324);
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

maxHp = 2500;
curHp = 2500;

//roll initiative
init = irandom_range(1,wait);

ds_list_add(global.loot, 1204);
ds_list_add(global.loot, 1204);
ds_list_add(global.loot, 1204);
ds_list_add(global.loot, 1204);
	
creatureType = [2,-1];
//stealables
stealIt = -1;


stealIt = 261;


atkRange = 0;