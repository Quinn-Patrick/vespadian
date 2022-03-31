/// initialize
/*player = true;
friend = true;

ai = -1;

name = "Eric";

portrait = spr_portPlaceholder;

str = global.scores[0,0];
frt = global.scores[0,1];
dex = global.scores[0,2];
agi = global.scores[0,3];
int = global.scores[0,4];
wis = global.scores[0,5];
cha = global.scores[0,6];
spr = global.scores[0,7];
lvl = global.scores[0,8];

pAtk = global.stats[0,0];
pDef = global.stats[0,1];
spd = global.stats[0,2];
hit = global.stats[0,3];
eva = global.stats[0,4];
mAtk = global.stats[0,5];
hRes = global.stats[0,6];
cRes = global.stats[0,7];
eRes = global.stats[0,8];
pRes = global.stats[0,9];
aRes = global.stats[0,10];
vRes = global.stats[0,11];
wait = global.stats[0,12];
maxHp = global.stats[0,13];
maxMp = global.stats[0,14];
curHp = global.stats[0,15];
curMp = global.stats[0,16];

eq[0] = global.equip[0,0];
eq[1] = global.equip[0,1];
eq[2] = global.equip[0,2];
eq[3] = global.equip[0,3];
eq[4] = global.equip[0,4];
eq[5] = global.equip[0,5];

col = global.party[0,1];
row = global.party[0,2];

powers[ds_list_size(global.ePowers)] = 0;

for(i = 0; i < ds_list_size(global.ePowers); i++)
{
	powers[i] = global.ePowers[| i];
}

conds[50] = 0;
//initialize status conditions
for(i = 50; i > -1; i--)
{
	conds[i] = global.cond[0,i];
}



//roll initiative
init = irandom_range(1,wait);*/
pStatInit(2,id);