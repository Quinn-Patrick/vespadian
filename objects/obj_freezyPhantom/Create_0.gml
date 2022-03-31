/// initialize
player = false;
friend = false;

ai = 4;

name = "Freezy Phantom";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 2;
frt = 12;
dex = 12;
agi = 26;
int = 25;
wis = 20;
cha = 21;
spr = 18;
lvl = 40;

xp = 160;

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

ds_list_add(powers, 335);
ds_list_add(abis, 407);
ds_list_add(abis, 412);
//ds_list_add(powers, 402);
setEnStats(id);
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

maxHp = 453;
curHp = 453;

//roll initiative
init = irandom_range(1,wait);
for(i = 0; i < global.lootAttempts; i++){
	randLoot = random_range(0,100);

	if(randLoot >= 50 && randLoot < 80)
	{
		ds_list_add(global.loot, 1174);
	}
	else if(randLoot >= 80){
		ds_list_add(global.loot, 1184);
	}
}
creatureType = [11,16];
//stealables
stealIt = -1;
randLoot = random_range(0,100);


atkRange = 0;