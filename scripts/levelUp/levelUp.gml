function levelUp(identity, interface) {

	identity.level++;
	identity.classLevels[identity.class]++;
	class = identity.class;
	classFileName = "";
	classFileName = getClassFile(class);
	
	divineMagicLevelUp = false;
	switch(identity.class){
		case(1): 
			identity.amLevel++;
			break;
		case(3):
			identity.dmLevel++;
			divineMagicLevelUp = true;
			break;
		case(5):
			if(identity.classLevels[identity.class] % 2 != 0){
				divineMagicLevelUp = true;
				identity.dmLevel++;
				identity.amLevel++;
			}
			break;
	}
	
	if(divineMagicLevelUp){
		newSpell = learnLevelUpSpell(identity, global.clericSpellList);
		if(newSpell != false){
			if(!is_undefined(interface))ds_list_add(interface.progressionMessages, "Learned Power: " + newSpell);
		}
	}
	
	classFile = file_text_open_read(classFileName);
	file_text_readln(classFile);
	
	
	file_text_readln(classFile);
	
	maxStr = file_text_read_real(classFile);
	file_text_readln(classFile);
	file_text_readln(classFile);
	maxFrt = file_text_read_real(classFile);
	file_text_readln(classFile);
	file_text_readln(classFile);
	maxDex = file_text_read_real(classFile);
	file_text_readln(classFile);
	file_text_readln(classFile);
	maxAgi = file_text_read_real(classFile);
	file_text_readln(classFile);
	file_text_readln(classFile);
	maxInt = file_text_read_real(classFile);
	file_text_readln(classFile);
	file_text_readln(classFile);
	maxWis = file_text_read_real(classFile);
	file_text_readln(classFile);
	file_text_readln(classFile);
	maxCha = file_text_read_real(classFile);
	file_text_readln(classFile);
	file_text_readln(classFile);
	maxSpr = file_text_read_real(classFile);
	file_text_readln(classFile);
	
	//Stat growth slows by 50% after level 50.
	if(identity.level > 50)
	{
		maxStr /= 2;
		maxFrt /= 2;
		maxDex /= 2;
		maxAgi /= 2;
		maxInt /= 2;
		maxWis /= 2;
		maxCha /= 2;
		maxSpr /= 2;
	}
	
	identity.str += scoreGrowth(maxStr + getPersonalityBonus(identity.personality, 0), identity.classLevels[identity.class]);
	identity.frt += scoreGrowth(maxFrt + getPersonalityBonus(identity.personality, 1), identity.classLevels[identity.class]);
	identity.dex += scoreGrowth(maxDex + getPersonalityBonus(identity.personality, 2), identity.classLevels[identity.class]);
	identity.agi += scoreGrowth(maxAgi + getPersonalityBonus(identity.personality, 3), identity.classLevels[identity.class]);
	identity.int += scoreGrowth(maxInt + getPersonalityBonus(identity.personality, 4), identity.classLevels[identity.class]);
	identity.wis += scoreGrowth(maxWis + getPersonalityBonus(identity.personality, 5), identity.classLevels[identity.class]);
	identity.cha += scoreGrowth(maxCha + getPersonalityBonus(identity.personality, 6), identity.classLevels[identity.class]);
	identity.spr += scoreGrowth(maxSpr + getPersonalityBonus(identity.personality, 7), identity.classLevels[identity.class]);
	
	while(true){
		nextLine = cleanString(file_text_readln(classFile));
		if(nextLine = "levels" || file_text_eof(classFile)) break;
	}
	
	if(identity.level % 10 == 0) identity.maxAp++;
	
	if(identity.classLevels[identity.class] == 10) gainEquipment(identity.class, identity);
	
	while(!file_text_eof(classFile)){
		next = real(file_text_readln(classFile)){
			if(next == identity.classLevels[identity.class]){
				next = cleanString(file_text_readln(classFile));
				if(next = "P"){
					newPower = real(file_text_readln(classFile))
					if(!is_undefined(interface))ds_list_add(interface.progressionMessages, "Learned Power: " + getPowerName(newPower));
					learnPower(identity, newPower);
				}else if(next = "A"){
					newAbility = real(file_text_readln(classFile))
					if(!is_undefined(interface))ds_list_add(interface.progressionMessages, "Learned Ability: " + getAbilityName(newAbility));
					learnAbility(identity, newAbility);
				}else if(next = "I"){
					identity.invenSize++;
					identity.inven[identity.invenSize-1] = -1;
				}
				break;
			}else{
				next = cleanString(file_text_readln(classFile));
				if(next != "-" && next != "I"){
					file_text_readln(classFile)
				}
			}
		}
	}
	
	calcParty();
	
	file_text_close(classFile);


}
