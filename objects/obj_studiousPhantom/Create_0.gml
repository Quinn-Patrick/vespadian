/// initialize
player = false;
friend = false;

ai = 9;

switcher = 0;

name = "Studious Phantom";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 12;
frt = 40;
dex = 38;
agi = 52;
int = 55;
wis = 50;
cha = 38;
spr = 47;
lvl = 10;

xp = 375;

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

ds_list_add(powers, 418);
ds_list_add(powers, 201);
//ds_list_add(powers, 310);



ds_list_add(abis, 413);
ds_list_add(abis, 423);
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

maxHp = 4665;
curHp = 4665;

//roll initiative
init = irandom_range(1,wait);

randLoot = random_range(0,100);

if(randLoot >= 20 && randLoot < 95)
{
	ds_list_add(global.loot, 1174);
}
else if (randLoot >= 95)
{
	ds_list_add(global.loot, 1186);
}
creatureType = [16,-1];
//stealables
stealIt = -1;
randLoot = random_range(0,100);
if(randLoot >= 50)
{
	stealIt = 1156;
}
atkRange = 0;