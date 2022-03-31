/// initialize
player = false;
friend = false;

ai = 22;
hasUsedDisaster = 0;


switcher = 0;
phase = 0;

battleTimer = 0;

name = "Ephemeris";
abName = "Ephemeris";
deadSprite = spr_nothing;
portrait = spr_portPlaceholder;

str = 75;
frt = 86;
dex = 92;
agi = 50;
int = 59;
wis = 60;
cha = 99;
spr = 99;
lvl = 10;

xp = 100000;

spellAbi = int;

eq[0] = 12;
eq[1] = 0;
eq[2] = 0;
eq[3] = 0;
eq[4] = 0;
eq[5] = 0;



hitsThrough = 0;

powers = ds_list_create();
abis = ds_list_create();
ds_list_add(abis, 401); //nightblade
ds_list_add(abis, 402); //poison immune
ds_list_add(abis, 403); //blind immune
ds_list_add(abis, 404); //para immune
ds_list_add(abis, 405); //instant death immune
ds_list_add(abis, 406); //sleep immune
ds_list_add(abis, 430); //improved critical
ds_list_add(abis, 8); //extra attack
ds_list_add(abis, 8); //extra attack

ds_list_add(powers, 453); //0 mark for death
ds_list_add(powers, 427); //1 soul divide
ds_list_add(powers, 347); //2 disaster
ds_list_add(powers, 429); //3 clear skies
ds_list_add(powers, 451); //4 perfect hypnosis
ds_list_add(powers, 351); //5 mass extinction
ds_list_add(powers, 324); //6 hasten

ds_list_add(powers, 338); //7 inferno
ds_list_add(powers, 339); //8 absolute zero
ds_list_add(powers, 340); //9 plasma storm
ds_list_add(powers, 217); //10 holy judgment
//ds_list_add(powers, 310);
setEnStats(id);
//ds_list_add(powers, 402);

//initialize status conditions
for(i = 50; i > 0; i--)
{
	conds[i] = 0;
}



pDef = 70;

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

maxHp = 250000;
curHp = 250000;



//roll initiative
init = irandom_range(1,wait);

randLoot = random_range(0,100);

creatureType = [0,-1];

//stealables
stealIt = -1;
randLoot = random_range(0,100);
stealIt = 1184;
ds_list_add(global.loot, 1215);

atkRange = 0;