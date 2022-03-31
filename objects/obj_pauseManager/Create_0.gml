/// @description Insert description here
// You can write your code in this editor

baseDepth = -100000;
depth = baseDepth;
level1 = -100001;
level2 = -100002;

roomTime = 0;

menuLevel = 0;

menuSelect[14,0] = 0;
menuSelect[13,0] = 0;
menuSelect[11,0] = 0;
menuSelect[9,0] = 0;
menuSelect[8,0] = 0;
menuSelect[7,0] = 0;
menuSelect[6,0] = 0;
menuSelect[4,0] = 0;
menuSelect[3,0] = 0;
menuSelect[2,0] = 0;
menuSelect[1,0] = 0;
menuSelect[0,0] = 0;
	
menuSelect[9,1] = 0;
menuSelect[8,1] = 0;
menuSelect[3,1] = 0;
menuSelect[2,1] = 0;
menuSelect[1,1] = 0;
menuSelect[0,1] = 0;
menuSelect[2,2] = 0;
menuSelect[2,3] = 0;
menuSelect[2,4] = 0;

menuSize[14,0] = 3;
menuSize[13,0] = 255;
menuSize[11,0] = 3;
menuSize[7,0] = 3;
menuSize[6,0] = 255;
menuSize[4,0] = 3;
menuSize[3,0] = 3;
menuSize[2,0] = 255;
menuSize[1,0] = 11;
menuSize[0,0] = 8;
	
menuSize[2,1] = 0;
menuSize[1,1] = 1;
menuSize[0,1] = 0;
	
maxItems = 16;
itemScroll = 0;
equipmentScroll = 0;
powerScroll[3] = 0;
powerScroll[2] = 0;
powerScroll[1] = 0;
powerScroll[0] = 0;
powerScreenMax = 15;

itemMenu = 0;

miniMenu = false;
miniSelect = 0;
miniSize = 0;

trashCount = false;
trashNum = 0;
trashMax = 0;

itemMode = 0;
itemStore[0] = -1;
itemStore[1] = 0;
itemStore[2] = 0;
slotStore = 0;
nameStore = "";

spellMode = 0; //used only for teleport right now, asks the player if they are sure they'd like to teleport

quitMode = 0; //used for the quit game options in the settings menu

teleportYN = 0;

//equipment switching stuff
for(bd = 15; bd > -1; bd--)
{
	statChanges[bd] = 0;
}

noAbilities = true;
for(bd = 0; bd < 4; bd++)
{
	if(!is_undefined(global.party[bd]))abListSize[bd] = ds_list_size(global.party[bd].abilities);
	else abListSize[bd] = 0;
	
	if(abListSize[bd] > 0) noAbilities = false;
	
	abSelect[bd] = 0;
}
abCharSelect = 0;
for(bd = 0; bd < 4; bd++)
{
	if(abListSize[bd] > 0) 
	{
		abCharSelect = bd;
		break;
	}
}

powListSize[3] = 0;
noPowers = true;
for(bg = 0; bg < 4; bg++)
{
	if(!is_undefined(global.party[bg]))powListSize[bg] = ds_list_size(global.party[bg].powers);
	else powListSize[bg] = 0;
	
	if(powListSize[bg] > 0) noPowers = false;
	
	powSelect[bg] = 0;
}
powCharSelect = 0;
for(bg = 0; bg < 4; bg++)
{
	if(powListSize[bg] > 0) 
	{
		powCharSelect = bg;
		break;
	}
}

blinkSwitcher = 1;

//VV for using powers out of battle VV
storePow = 0;
storeUser = 0;
storeCost = 0;

//formation forming
memberSelected = -1; 
formGrSel[1] = 0;
formGrSel[0] = 0;

tempPos[10,0] = -1;
tempPos[3,0] = -1;
tempPos[2,0] = -1;
tempPos[1,0] = -1;
tempPos[0,0] = -1;

tempPos[3,1] = -1;
tempPos[2,1] = -1;
tempPos[1,1] = -1;
tempPos[0,1] = -1;

tempPos[3,2] = -1;
tempPos[2,2] = -1;
tempPos[1,2] = -1;
tempPos[0,2] = -1;

storeForm[0] = -1;
storeForm[1] = 0;
storeForm[2] = 0;

formationGreenbox = false;

//class selection
classCharacter = global.party[0];

for(ba = 28; ba > -1; ba--)
{
	actFeats[ba] = -1;
}

featMode = 0;

//saving
saveScroll = 0;
saveMenu = 0;
saveYN = 0;
saveConfTime = 60;