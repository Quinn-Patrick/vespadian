/// initialize
player = false;
friend = false;

ai = 0;

name = "Supergeist";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 38;
frt = 36;
dex = 50;
agi = 35;
int = 55;
wis = 25;
cha = 38;
spr = 47;
lvl = 5;

xp = 400;

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

ds_list_add(powers, 205);
ds_list_add(powers, 408);
ds_list_add(abis, 419);
ds_list_add(abis, 418);
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

maxHp = 5565;
curHp = 5565;

//roll initiative
init = irandom_range(1,wait);

randLoot = random_range(0,100);
for(i = 0; i < global.lootAttempts; i++){
	if(randLoot >= 30 && randLoot < 80)
	{
		ds_list_add(global.loot, 1174);
	}
	else if (randLoot >= 70)
	{
		ds_list_add(global.loot, 1175);
	}
}
creatureType = [16,-1];
//stealables
stealIt = -1;

stealIt = 1162;


atkRange = 0;