/// @description Insert description here
// You can write your code in this editor
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

if(pAtkEff < 1) pAtkEff = 1;
if(pDefEff < 1) pDefEff = 1;
if(spdEff < 1) spdEff = 1;
if(hitEff < 1)hitEff = 1;
if(evaEff < 1)evaEff = 1;
if(mAtkEff < 1)mAtkEff = 1;
if(hResEff < 1)hResEff = 1;
if(cResEff < 1)cResEff = 1;
if(eResEff < 1)eResEff = 1;
if(pResEff < 1)pResEff = 1;
if(aResEff < 1)aResEff = 1;
if(vResEff < 1)vResEff = 1;
if(mResEff < 1)mResEff = 1;
curHp = round(curHp);

gettingHit--;

else if(conds[20] == 1)
{
	if((global.uniClock % 2) == 0)visible = 1;
	else visible = 0;
}
else visible = 1;

if(conds[21] == 1)
{
	blend = abs(sin((global.uniClock/120)*2*pi)*255);
	image_blend = make_color_rgb(blend,blend,blend);
}
else image_blend = c_white;

x = basex + (obj_battleHandler.battleSwitcher*shake)

if(shake < 1) shake = 0;
if(obj_battleHandler.battleGlobalTimer % 5 == 0 && shake > 0)shake--;

if(conds[40] > 0) y -= 8;

depth = 5-row;