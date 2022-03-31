function statCalc(argument0) {
	//calculate stats
	index = argument0;
	index.portrait = partyP(index);
	if(is_struct(index)){
		

		spriteArray = getCharacterSprites(index)
		index.portrait = spriteArray[0]
	
		for(i = 0; i < 28; i++)
		{
			global.equipmentStats[i] = 0;
		}

		if(!is_undefined(index))
		{
			for(j=0; j<6; j++)
			{
				for(i = 0; i < 28; i++)
				{
					global.equipmentStatsIndi[j,i] = index.equipment[j,i];
					global.equipmentStats[i] += index.equipment[j,i];
				}
			}
		
			index.level = 0;
			for(m = 0; m < global.numberOfClasses; m++){
				hello = index.classLevels[m];
				index.level += index.classLevels[m];
			}
	
			index.pAtk = pAtkCalc(index);
			index.pDef = pDefCalc(index);
			index.spd = speedCalc(index);
			index.acc = hitRcalc(index);
			index.eva = evadeRcalc(index);
			index.amAtk = mAtkCalc(index);
			index.hRes = hResCalc(index);
			index.cRes = cResCalc(index);
			index.eRes = eResCalc(index);
			index.pRes = pResCalc(index);
			index.aRes = aResCalc(index);
			index.vRes = vResCalc(index);
			index.mRes = mResCalc(index);
			index.wait = waitCalc(index);
			index.maxHp = hpCalc(index);
			index.maxSp = mpCalc(index);
			index.dmAtk = dmAtkCalc(index);
			
			if(checkAbField(index, 219)){
				bonusValue = floor(index.cha/4);
				index.pAtk += bonusValue;
				index.pDef += bonusValue;
				index.acc += bonusValue;
				index.eva += bonusValue;
				index.amAtk += bonusValue;
				index.hRes += bonusValue;
				index.cRes += bonusValue;
				index.eRes += bonusValue;
				index.pRes += bonusValue;
				index.aRes += bonusValue;
				index.vRes += bonusValue;
				index.mRes += bonusValue;
				index.maxHp = round(index.maxHp*(1+(bonusValue/100)));
				index.maxSp = round(index.maxSp*(1+(bonusValue/100)));
				index.dmAtk += bonusValue;
			}
			if(index.curHp > index.maxHp) index.curHp = index.maxHp;
			if(index.curSp > index.maxSp) index.curSp = index.maxSp;
		
			index.curAp = index.maxAp;
			for(t = 0; t < ds_list_size(index.abilities); t++){
				nextAbility = index.abilities[| t];
				if(nextAbility[1] == 1) index.curAp -= getAbilityCost(nextAbility[0]);
			}
		}
	}
}
