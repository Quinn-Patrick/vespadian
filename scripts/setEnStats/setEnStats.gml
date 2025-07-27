function setEnStats(argument0) {
	indiId = argument0;

	shake = 0;
	
	eqStatsTot[27] = 0;

	eqStats[5,27] = 0;
	
	gettingHit = 0;
	
	fileName = "files/enemies/"+object_get_name(indiId.object_index)+"0.txt";
	
	
	enemyFile = file_text_open_read(fileName);
	
	indiId.name = cleanString(file_text_readln(enemyFile));
	indiId.sprite_index = asset_get_index(cleanString(file_text_readln(enemyFile)));
	
	indiId.defendSprite = indiId.sprite_index;
	indiId.ouchSprite = indiId.sprite_index;
	indiId.lowSprite = indiId.sprite_index;
	indiId.mainSprite = indiId.sprite_index;
	indiId.deadSprite = spr_nothing;
	
	
	indiId.ai = real(file_text_readln(enemyFile));
	indiId.str = real(file_text_readln(enemyFile));
	indiId.frt = real(file_text_readln(enemyFile));
	indiId.dex = real(file_text_readln(enemyFile));
	indiId.agi = real(file_text_readln(enemyFile));
	indiId.int = real(file_text_readln(enemyFile));
	indiId.wis = real(file_text_readln(enemyFile));
	indiId.cha = real(file_text_readln(enemyFile));
	indiId.spr = real(file_text_readln(enemyFile));
	indiId.lvl = real(file_text_readln(enemyFile));
	indiId.xp = real(file_text_readln(enemyFile));
	indiId.maxHp = real(file_text_readln(enemyFile));
	indiId.pDef = real(file_text_readln(enemyFile));
	indiId.creatureType[0] = real(file_text_readln(enemyFile));
	indiId.creatureType[1] = real(file_text_readln(enemyFile));
	indiId.eq[0] = real(file_text_readln(enemyFile));
	indiId.eq[1] = real(file_text_readln(enemyFile));
	indiId.eq[2] = real(file_text_readln(enemyFile));
	indiId.eq[3] = real(file_text_readln(enemyFile));
	indiId.eq[4] = real(file_text_readln(enemyFile));
	indiId.eq[5] = real(file_text_readln(enemyFile));
	
	ds_list_clear(indiId.abis);
	ds_list_clear(indiId.powers);
	
	while(!file_text_eof(enemyFile))
	{
		next = cleanString(file_text_readln(enemyFile));
		
		var targetList;
		
		if(next = "abilities")
		{
			targetList = indiId.abis;			
			/*var ability = string_trim_end(file_text_readln(enemyFile));
			show_debug_message("Found ability: " + ability);
			if(string_digits(ability) == string(ability)){
				show_debug_message("Ability is valid");
				ds_list_add(indiId.abis, real(file_text_readln(enemyFile)));
			}
			show_debug_message("string_digits ability is " + string_digits(ability));*/
		}
		else if(next = "powers")
		{
			targetList = indiId.powers;
						
		}
		else ds_list_add(targetList, real(next));
	}
	
	file_text_close(enemyFile);
	
	eqSet(id);
	
	/*for(i = 0; i < 6; i++){
		show_debug_message("equipmentStats[" + string(i) + "] = " + string(global.equipmentStats[i]));
		for(j = 0; j < 28; j++)
		{
			show_debug_message("Item dat is " + string(getItemDat(indiId.eq[i], j+4)));
			global.equipmentStats[i] += getItemDat(indiId.eq[i], j+4);
		}
	}*/

	indiId.pAtk = pAtkCalc(indiId);
	indiId.pDef = pDefCalc(indiId);
	indiId.spd = speedCalc(indiId);
	indiId.hit = hitRcalc(indiId);
	indiId.eva = evadeRcalc(indiId);
	indiId.mAtk = mAtkCalc(indiId);
	indiId.dmAtk = dmAtkCalc(indiId);
	indiId.hRes = hResCalc(indiId);
	indiId.cRes = cResCalc(indiId);
	indiId.eRes = eResCalc(indiId);
	indiId.pRes = pResCalc(indiId);
	indiId.aRes = aResCalc(indiId);
	indiId.vRes = vResCalc(indiId);
	indiId.mRes = mResCalc(indiId);
	indiId.wait = waitCalc(indiId);
	indiId.maxHp = hpCalc(indiId);
	indiId.maxMp = mpCalc(indiId);
	indiId.curHp = indiId.maxHp;
	indiId.curMp = indiId.maxMp;


	hasActed = false;
	atkRange = 1;

	indiId.abName = "";
	for(m = 1; m <= string_length(indiId.name); m++){
		indiId.abName = indiId.abName + string_char_at(indiId.name, m);
		if(string_width(indiId.abName) > 110){
			indiId.abName = indiId.abName + "..."
			break;
		}
	}
}
