/// initialize
player = false;
friend = false;

ai = 0;

name = "Deep Woods Wisp";
abName = "Deep Woods Wisp";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 20;
frt = 4;
dex = 18;
agi = 18;
int = 18;
wis = 9;
cha = 12;
spr = 13;
lvl = 5;

xp = 80;

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
ds_list_add(abis, 422);
ds_list_add(abis, 204);
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

maxHp = 915;
curHp = 915;

//roll initiative
init = irandom_range(1,wait);

for(i = 0; i < global.lootAttempts; i++){
	randLoot = random_range(0,100);


	if (randLoot >= 90)
	{
		ds_list_add(global.loot, 1186);
	}
}
creatureType = [12,16];

//stealables
stealIt = -1;
randLoot = random_range(0,100);
if(randLoot >= 50)
{
	stealIt = 1156;
}

atkRange = 0;