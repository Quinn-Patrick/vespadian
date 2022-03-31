/// initialize
player = false;
friend = false;

ai = 0;

name = "Slime Supreme";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 90;
frt = 99;
dex = 38;
agi = 68;
int = 4;
wis = 90;
cha = 8;
spr = 44;
lvl = 5;

xp = 6000;

spellAbi = int;
pDef = 10;
eq[0] = 0;
eq[1] = 0;
eq[2] = 0;
eq[3] = 0;
eq[4] = 0;
eq[5] = 0;



hitsThrough = 0;

powers = ds_list_create();
abis = ds_list_create();

ds_list_add(abis, 410);
ds_list_add(abis, 415);
ds_list_add(abis, 107);
ds_list_add(abis, 8);

ds_list_add(powers, 432);
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

maxHp = 117265;
curHp = 117265;

//roll initiative
init = irandom_range(1,wait);
for(i = 0; i < global.lootAttempts; i++){
	for(j = 0; j < 6; j++){
		randLoot = random_range(0,100);
		if(randLoot >= 50)
		{
			ds_list_add(global.loot, 1166);
		}
	}
	for(j = 0; j < 4; j++){
		randLoot = random_range(0,100);
		if(randLoot >= 50)
		{
			ds_list_add(global.loot, 1220);
		}
	}
	
	for(j = 0; j < 2; j++){
		randLoot = random_range(0,100);
		if(randLoot >= 50)
		{
			ds_list_add(global.loot, 1264);
		}
	}
	
	
	ds_list_add(global.loot, 1296);
}
creatureType = [5,-1];

//stealables

stealIt = 1182;


atkRange = 0;