// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function duplicateCharacter(characterToDuplicate) constructor{
	uniqueIdentifier = 0;
	
	str = characterToDuplicate.str;
	frt = characterToDuplicate.frt;
	dex = characterToDuplicate.dex;
	agi = characterToDuplicate.agi;
	int = characterToDuplicate.int;
	wis = characterToDuplicate.wis;
	cha = characterToDuplicate.cha;
	spr = characterToDuplicate.spr;
	
	name = characterToDuplicate.name;
	personality = characterToDuplicate.personality;
	gender = characterToDuplicate.gender;
	costume = characterToDuplicate.costume;
	
	class = characterToDuplicate.class;
	classLevels = characterToDuplicate.classLevels;
	level = characterToDuplicate.level;
	
	powers = characterToDuplicate.powers;
	abilities = characterToDuplicate.abilities;
	
	formPositionX = characterToDuplicate.formPositionX;
	formPositionY = characterToDuplicate.formPositionY;
	
	
	for(i = 5; i >= 0; i--){
		for(h = 27; h >= 0; h--){
			equipment[i,h] = characterToDuplicate.equipment[i,h];
		}
	}
	
	pAtk = characterToDuplicate.pAtk;
	pDef = characterToDuplicate.pDef;
	spd = characterToDuplicate.spd;
	acc = characterToDuplicate.acc;
	eva = characterToDuplicate.eva;
	dmAtk = characterToDuplicate.dmAtk; //divine magic power stat
	amAtk = characterToDuplicate.amAtk; // arcane magic power stat
	
	dmLevel = characterToDuplicate.dmLevel; //divine magic level
	amLevel = characterToDuplicate.amLevel; // arcane magic level
	
	hRes = characterToDuplicate.hRes;
	cRes = characterToDuplicate.cRes;
	eRes = characterToDuplicate.eRes;
	pRes = characterToDuplicate.pRes;
	aRes = characterToDuplicate.aRes;
	vRes = characterToDuplicate.vRes;
	mRes = characterToDuplicate.mRes;
	
	wait = characterToDuplicate.wait;
	
	maxHp = characterToDuplicate.maxHp;
	curHp = characterToDuplicate.curHp;
	maxSp = characterToDuplicate.maxSp;
	curSp = characterToDuplicate.curSp;
	
	invenSize = characterToDuplicate.invenSize;
	
	for(i = 0; i < invenSize; i++){
		inven[i] = -1;
	}
	
	xp = characterToDuplicate.xp;
	
	maxAp = characterToDuplicate.maxAp;
	curAp = characterToDuplicate.curAp;
	
	conditions = characterToDuplicate.conditions;
	
	equipCodes = characterToDuplicate.equipCodes;
	
	tempPos = [-1,-1] //this is a silly thing needed for the formation menu
}