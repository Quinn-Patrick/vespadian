/// initialize
player = false;
friend = false;

ai = 0;

name = "Hostile Moleman";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 19;
frt = 18;
dex = 3;
agi = 13;
int = 6;
wis = 15;
cha = 3;
spr = 10;
lvl = 40;

xp = 90;

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
ds_list_add(abis, 413);
ds_list_add(powers, 7);
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

maxHp = 468;
curHp = 468;

//roll initiative
init = irandom_range(1,wait);
for(i = 0; i < global.lootAttempts; i++){
	randLoot = random_range(0,100);

	if(randLoot >= 50 && randLoot < 90)
	{
		ds_list_add(global.loot, 1179);
	}
	else if(randLoot >= 90){
		ds_list_add(global.loot, 1202);
	}
}
creatureType = [0,-1];
//stealables
stealIt = -1;
randLoot = random_range(0,100);
if(randLoot >= 80)
{
	stealIt = 1153;
}


atkRange = 0;