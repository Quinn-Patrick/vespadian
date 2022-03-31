// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function character() constructor{
	
	uniqueIdentifier = 0;
	
	str = 0;
	frt = 0;
	dex = 0;
	agi = 0;
	int = 0;
	wis = 0;
	cha = 0;
	spr = 0;
	
	name = "";
	personality = 0;
	gender = 0; //M = 0, F = 1
	costume = 0;
	
	portrait = spr_portPlaceholder;
	
	class = 0;
	classLevels = [];
	for(i = global.numberOfClasses-1; i > -1; i--){
		classLevels[i] = 0;
	}
	level = 0;
	
	powers = ds_list_create();
	abilities = ds_list_create();
	
	formPositionX = 0;
	formPositionY = 0;
	
	
	for(i = 5; i >= 0; i--){
		for(j = 27; j >= 0; j--){
			equipment[i,j] = 0;
		}
	}
	
	pAtk = 0;
	pDef = 0;
	spd = 0;
	acc = 0;
	eva = 0;
	dmAtk = 0; //divine magic power stat
	amAtk = 0; // arcane magic power stat
	
	dmLevel = 0; //divine magic level
	amLevel = 0; // arcane magic level
	
	hRes = 0;
	cRes = 0;
	eRes = 0;
	pRes = 0;
	aRes = 0;
	vRes = 0;
	mRes = 0;
	
	wait = 0;
	
	maxHp = 0;
	curHp = 0;
	maxSp = 0;
	curSp = 0;
	
	invenSize = 5;
	
	for(i = invenSize-1; i >= 0; i--){
		inven[i] = -1;
	}
	
	xp = 0;
	
	maxAp = 0;
	curAp = 0;
	
	conditions[127] = 0;
	
	equipCodes[127] = 0;
	
	tempPos = [-1,-1] //this is a silly thing needed for the formation menu
	
}