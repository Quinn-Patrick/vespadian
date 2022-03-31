/// initialize
player = false;
friend = false;

ai = 4;

name = "King Yorick";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 2;
frt = 16;
dex = 32;
agi = 45;
int = 1;
wis = 35;
cha = 1;
spr = 25;
lvl = 10;

xp = 195;

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
ds_list_add(abis, 419);
ds_list_add(abis, 423);
ds_list_add(powers, 406);
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

curHp = 1235;
maxHp = 1235;
//roll initiative
init = irandom_range(1,wait);
for(i = 0; i < global.lootAttempts; i++){
	randLoot = random_range(0,100);

	if(randLoot >= 30 && randLoot < 95)
	{
		ds_list_add(global.loot, 1176);
	}else if(randLoot >= 95){
		ds_list_add(global.loot, 1212);
	}
}
creatureType = [16,-1];
//stealables
stealIt = -1;
randLoot = random_range(0,100);
if(randLoot >= 30 && randLoot < 70)
{
	stealIt = 1248;
}else if(randLoot >= 70){
	stealIt = 405;
}

atkRange = 0;