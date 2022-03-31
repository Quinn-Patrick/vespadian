function pStatInit(argument0, argument1) {
	memberIndex = argument0; //character struct
	memberId = argument1; //battler object

	shake = 0;

	/// initialize
	memberId.player = true;
	memberId.friend = true;

	memberId.ai = -1;

	memberId.name = memberIndex.name;
	
	memberId.abName = "";
	for(m = 1; m <= string_length(memberId.name); m++){
		hello = string_length(memberId.name);
		memberId.abName = memberId.abName + string_char_at(memberId.name, m);
		if(string_width(memberId.abName) > 110){
			memberId.abName = memberId.abName + "..."
			break;
		}
	}
	
	memberId.num = memberIndex;

	memberId.hasActed = false;

	gettingHit = 0;

	sprites = characterSpriteSwitch(memberIndex.class, memberIndex.gender, memberIndex.costume);
	memberId.deadSprite = sprites[3];
	memberId.defendSprite = sprites[4];
	memberId.lowSprite = sprites[5];
	memberId.ouchSprite = sprites[6];
	memberId.mainSprite = sprites[2];

	memberId.slotN = -1;
	for(bo = 0; bo <= 3; bo++)
	{
		if(global.party[bo] == memberIndex)
		{
			memberId.slotN = bo;
		}
	}

	memberId.abis = ds_list_create();
	for(bf = 0; bf < ds_list_size(memberIndex.abilities); bf++)
	{
		if(ds_list_find_value(memberIndex.abilities, bf)[1])ds_list_add(memberId.abis, ds_list_find_value(memberIndex.abilities, bf)[0]);
	}

	memberId.portrait = spr_portPlaceholder;

	memberId.str = memberIndex.str;
	memberId.frt = memberIndex.frt;
	memberId.dex = memberIndex.dex;
	memberId.agi = memberIndex.agi;
	memberId.int = memberIndex.int;
	memberId.wis = memberIndex.wis;
	memberId.cha = memberIndex.cha;
	memberId.spr = memberIndex.spr;
	memberId.lvl = memberIndex.level;

	memberId.pAtk = memberIndex.pAtk;
	memberId.pDef = memberIndex.pDef;
	memberId.spd = memberIndex.spd;
	memberId.hit = memberIndex.acc;
	memberId.eva = memberIndex.eva;
	memberId.mAtk = memberIndex.amAtk;
	memberId.dmAtk = memberIndex.dmAtk;
	memberId.hRes = memberIndex.hRes;
	memberId.cRes = memberIndex.cRes;
	memberId.eRes = memberIndex.eRes;
	memberId.pRes = memberIndex.pRes;
	memberId.aRes = memberIndex.aRes;
	memberId.vRes = memberIndex.vRes;
	memberId.mRes = memberIndex.mRes;
	memberId.wait = memberIndex.wait;
	memberId.maxHp = memberIndex.maxHp;
	memberId.maxMp = memberIndex.maxSp;
	memberId.curHp = memberIndex.curHp;
	memberId.curMp = memberIndex.curSp;



	memberId.eq[0] = memberIndex.equipment[0,0];
	memberId.eq[1] = memberIndex.equipment[1,0];
	memberId.eq[2] = memberIndex.equipment[2,0];
	memberId.eq[3] = memberIndex.equipment[3,0];
	memberId.eq[4] = memberIndex.equipment[4,0];
	memberId.eq[5] = memberIndex.equipment[5,0];

	equipmentAbilities(memberId);

	atkRange = getItemDat(memberId.eq[0], 19);
	hitsThrough = false;

	memberId.col = memberIndex.formPositionX;
	memberId.row = memberIndex.formPositionY;

	gridPlace(memberId.friend, memberId, memberId.col, memberId.row);

	memberId.powers[ds_list_size(memberIndex.powers)] = 0;

	for(i = 0; i < ds_list_size(memberIndex.powers); i++)
	{
		memberId.powers[i] = ds_list_find_value(memberIndex.powers, i);
	}

	memberId.conds[128] = 0;
	//initialize status conditions
	for(i = 127; i > -1; i--)
	{
		memberId.conds[i] = memberIndex.conditions[i];
	}

	if(checkAbBatt(memberId, 102)){
		memberId.conds[11] += 5;
	}

	if(checkAbBatt(memberId, 104)){
		memberId.conds[12] += 5;
	}

	memberId.pAtkEff = memberIndex.pAtk+memberId.conds[1];
	memberId.pDefEff = memberIndex.pDef+memberId.conds[2];
	memberId.spdEff = memberIndex.spd+memberId.conds[3];
	memberId.hitEff = memberIndex.acc+memberId.conds[4];
	memberId.evaEff = memberIndex.eva+memberId.conds[5];
	memberId.mAtkEff = memberIndex.amAtk+memberId.conds[6];
	memberId.dmAtkEff = memberIndex.dmAtk+memberId.conds[6];

	memberId.hResEff = memberIndex.hRes+memberId.conds[7];
	memberId.cResEff = memberIndex.cRes+memberId.conds[8];
	memberId.eResEff = memberIndex.eRes+memberId.conds[9];
	memberId.pResEff = memberIndex.pRes+memberId.conds[10];
	memberId.aResEff = memberIndex.aRes+memberId.conds[11];
	memberId.vResEff = memberIndex.vRes+memberId.conds[12];
	memberId.mResEff = memberIndex.mRes+memberId.conds[13];


	//Mirage Ability
	if(checkAbBatt(memberId, 311)){
		memberId.conds[20] = 1;
	}

	//Twice Lived Ability
	if(checkAbBatt(memberId, 106)){
		memberId.conds[39] = 1;
	}
	
	//Fleet of Foot Ability
	if(checkAbBatt(memberId, 315)){
		memberId.conds[22] = -0.5;
	}
	
	//Master Treasure Hunter ability
	if(checkAbBatt(memberId, 318)){
		global.lootAttempts++;
	}

	//roll initiative
	if(!checkAbBatt(memberId, 428))memberId.init = irandom_range(2,wait);
	else memberId.init = 1;
	
	
	
	creatureType = [0,-1];

	//Mark the stealable item slot as empty
	stealIt = -1;

}
