///menuDraw
// You can write your code in this editor
if(global.paused == 1)
{
	xSpace = 80;
	xStart = 208;
	if(!onWorldMap()){
		xO = obj_camera.x;
		yO = obj_camera.y;
	}
	else{
		xO = camera_get_view_x(view_camera[0]);
		yO = camera_get_view_y(view_camera[0]);
	}
	menuY = 80;
	menuX = 800
	menuSpace = 32;
	
	if(global.pauseScreen == 0)//////////////////////////////////////////////////////////////////////////////////////////////////pause screen
	{
		
		draw_sprite(spr_pauseBoxFull, 0, xO, yO);
		if(menuLevel == 0)
		{
			draw_sprite(spr_cursor, 0, xO + menuX - 32, yO+menuY+(menuSpace*menuSelect[menuLevel,0]));
			if(key(5))
			{
				sound(snd_select);
				menuSelect[menuLevel,0]--;
				if((global.roomType == 0 || (onWorldMap() && global.vehicle > 0)) && menuSelect[menuLevel,0] == 7)menuSelect[menuLevel,0]--;
				if(menuSelect[menuLevel,0]<0) menuSelect[menuLevel,0] = menuSize[menuLevel,0];
			}
			else if (key(7))
			{
				sound(snd_select);
				menuSelect[menuLevel,0]++;
				if((global.roomType == 0 || (onWorldMap() && global.vehicle > 0)) && menuSelect[menuLevel,0] == 7)menuSelect[menuLevel,0]++;
				if(menuSelect[menuLevel,0] > menuSize[menuLevel,0]) menuSelect[menuLevel,0] = 0;
			}
			if(key(9))
			{
				sound(snd_select);
				if(menuSelect[menuLevel,0] == 1)
				{
					menuLevel = 1;
				}
				else if(menuSelect[menuLevel,0] == 0)
				{
					menuLevel = 2;
					if(itemMenu != 0)
					{
						while(!is_undefined(global.party[itemMenu-1]))
						{
							itemMenu++;
							if(itemMenu > 4) itemMenu = 0;
							if(itemMenu == 0) break;
						}
					}
				}
				else if(menuSelect[menuLevel,0] == 2)
				{
					for(bd = 0; bd < 4; bd++)
					{
						abListSize[bd] = ds_list_size(global.party[bd].abilities);
	
						if(abListSize[bd] > 0) noAbilities = false;
	
						abSelect[bd] = 0;
					}
					if(!noAbilities){
						menuLevel = 9;
						while(is_undefined(global.party[abCharSelect]))
						{
							abCharSelect++;
							if(abCharSelect > 3) abCharSelect = 0;
						}
					}
					
				}
				else if(menuSelect[menuLevel,0] == 3)
				{
					if(!noPowers)
					{
						//list of spells that can be used out of battle
						oobPowers = ds_list_create();
						ds_list_add(oobPowers, 202);
						ds_list_add(oobPowers, 204);
						ds_list_add(oobPowers, 208);
						ds_list_add(oobPowers, 211);
						ds_list_add(oobPowers, 212);
						ds_list_add(oobPowers, 213);
						ds_list_add(oobPowers, 214);
						ds_list_add(oobPowers, 215);
						ds_list_add(oobPowers, 216);
						
						ds_list_add(oobPowers, 223);
						ds_list_add(oobPowers, 224);
						
						ds_list_add(oobPowers, 348);
						ds_list_add(oobPowers, 349);
						
						for(bg = 0; bg < 4; bg++) //update the size of the power lists
						{
							if(!is_undefined(global.party[bg]))powListSize[bg] = ds_list_size(global.party[bg].powers);
							else powListSize[bg] = 0;
						}
						
						menuLevel = 10;
						while(is_undefined(global.party[powCharSelect]))
						{
							powCharSelect++;
							if(powCharSelect > 3) powCharSelect = 0;
						}
						
					}
				}
				else if(menuSelect[menuLevel,0] == 4)
				{
					for(bl = 0; bl <= 3; bl++)
					{
						global.party[bl].tempPos = [-1,-1];
						
					}
					for(bl = 0; bl <= 3; bl++)
					{
						if(!is_undefined(global.party[bl]))
						{
							global.party[bl].tempPos[0] =  global.party[bl].formPositionX;
							global.party[bl].tempPos[1] =  global.party[bl].formPositionY;
						}
					}
					menuLevel = 12;
				}
				else if(menuSelect[menuLevel,0] == 5)
				{
					menuLevel = 4;
				}
				else if(menuSelect[menuLevel,0] == 6)
				{
					menuLevel = 7;
				}
				else if(menuSelect[menuLevel,0] == 7)
				{
					menuLevel = 13;
					menuSelect[menuLevel, 0] = global.saveFileNumber;
					while(menuSelect[menuLevel,0] > saveScroll+maxItems-1)
					{
						saveScroll++;
					}	
				}
				else if(menuSelect[menuLevel,0] == 8)
				{
					menuLevel = 14;
				}
			}
			if(key(10))
			{
				sound(snd_select);
				global.testIncrement++;
				if(global.paused == 1)
				{
					ds_list_destroy(miniMenuList);
					ds_list_destroy(availEqList);
					global.paused = 0;
					global.control = true;
				}
			}
			
		}
		
		if(menuLevel == 1)//////////////////////////////////////////////////////////////////////////////////////////////////equipment checking
		{
			
			draw_sprite(spr_cursor, 0, xO + ((menuSelect[menuLevel,1]*4)*xSpace) + xStart-24, yO+menuY+(menuSpace*menuSelect[menuLevel,0])+(floor(menuSelect[menuLevel, 0]/3)*80));
			if(key(5))
			{
				sound(snd_select);
				menuSelect[menuLevel,0]--;
				if(menuSelect[menuLevel,0]<0) menuSelect[menuLevel,0] = menuSize[menuLevel,0];
				while(global.party[floor(menuSelect[menuLevel,0]/3)] == -1)
				{
					menuSelect[menuLevel,0]--;
					if(menuSelect[menuLevel,0]<0) menuSelect[menuLevel,0] = menuSize[menuLevel,0];
				}
			}
			else if (key(7))
			{
				sound(snd_select);
				menuSelect[menuLevel,0]++;
				if(menuSelect[menuLevel,0] > menuSize[menuLevel,0]) menuSelect[menuLevel,0] = 0;
				while(global.party[floor(menuSelect[menuLevel,0]/3)] == -1)
				{
					menuSelect[menuLevel,0]++;
					if(menuSelect[menuLevel,0] > menuSize[menuLevel,0]) menuSelect[menuLevel,0] = 0;
				}
			}
			else if(key(1))
			{
				sound(snd_select);
				menuSelect[menuLevel,1]++;
				if(menuSelect[menuLevel,1]>menuSize[menuLevel,1]) menuSelect[menuLevel,1] = 0;
			}
			else if(key(3))
			{
				sound(snd_select);
				menuSelect[menuLevel,1]--;
				if(menuSelect[menuLevel,1]<0) menuSelect[menuLevel,1] = menuSize[menuLevel,1];
			}
			
			if(key(10))
			{
				sound(snd_select);
				menuLevel = 0;
			}
			
			partyEqSelect = global.party[floor(menuSelect[menuLevel,0]/3)];
			while(is_undefined(partyEqSelect))
			{
				menuSelect[menuLevel,0]++;
				if(menuSelect[menuLevel,0] > menuSize[menuLevel,0]) menuSelect[menuLevel,0] = 0;
				
				hello = menuSelect[menuLevel,0];
				partyEqSelect = global.party[floor(menuSelect[menuLevel,0]/3)];
			}
			
			if(menuSelect[menuLevel,0] % 3 == 0)
			{
				if(menuSelect[menuLevel,1] == 0)
				{
					eqSlotSelect = 0;
				}
				else if(menuSelect[menuLevel,1] == 1)
				{
					eqSlotSelect = 1;
				}
			}
			else if(menuSelect[menuLevel,0] % 3 == 1)
			{
				if(menuSelect[menuLevel,1] == 0)
				{
					eqSlotSelect = 2;
				}
				else if(menuSelect[menuLevel,1] == 1)
				{
					eqSlotSelect = 3;
				}
			}
			else if(menuSelect[menuLevel,0] % 3 == 2)
			{
				if(menuSelect[menuLevel,1] == 0)
				{
					eqSlotSelect = 4;
				}
				else if(menuSelect[menuLevel,1] == 1)
				{
					eqSlotSelect = 5;
				}
			}
			
			if(key(9))
			{
				sound(snd_select);
				//eqArray = findEqArray(partyEqSelect);
				hello = getItemDat(partyEqSelect.equipment[1,0], 0);
				if(!(eqSlotSelect == 1 && getItemDat(partyEqSelect.equipment[0,0], 0) == 4))
				{
					eqItem = partyEqSelect.equipment[eqSlotSelect, 0];
					buildEqList(availEqList, partyEqSelect, eqSlotSelect);
					menuLevel = 6;
					
					if(ds_list_size(availEqList) > 0)statPreviewSetup(partyEqSelect, global.stock[availEqList[| 0],0], eqSlotSelect);
					else statPreviewSetup(partyEqSelect, 0, eqSlotSelect);
					
					statusPortrait = partyP(partyEqSelect);
				
					menuSize[6,0] = ds_list_size(availEqList);
				}
			}
		}
		else if(menuLevel == 8) ////////////////////////////////////////////////////////////////////classes
		{
			if(key(1))
			{
				sound(snd_select);
				if(classSelector.state == 0){
					menuSelect[menuLevel,0]++;
					classSelector.offset = 128;
					if(menuSelect[menuLevel,0] >= global.numberOfClasses) menuSelect[menuLevel,0] = 0;
				}else{
					if(menuSelect[menuLevel, 1] == 1){
						menuSelect[menuLevel, 1] = 0;
					}else{
						menuSelect[menuLevel, 1] = 1;
					}
				}
			}
			else if(key(3))
			{
				sound(snd_select);
				if(classSelector.state == 0){
					menuSelect[menuLevel,0]--;
					classSelector.offset = -128;
					if(menuSelect[menuLevel,0] < 0) menuSelect[menuLevel,0] = global.numberOfClasses-1;
				}else{
					if(menuSelect[menuLevel, 1] == 1){
						menuSelect[menuLevel, 1] = 0;
					}else{
						menuSelect[menuLevel, 1] = 1;
					}
				}
			}
			
			if(key(9)){
				if(classSelector.state == 0 && menuSelect[menuLevel, 0] != classCharacter.class){
					classSelector.state = 1;
					menuSelect[menuLevel, 1] = 0;
				}
				else if(classSelector.state == 1){
					if(menuSelect[menuLevel, 1] == 0){
						classSelector.state = 0;
					}else{
						classCharacter.class = menuSelect[menuLevel, 0];
						classCharacter.portrait = partyP(classCharacter);
						sound(snd_select);
						instance_destroy(classSelector);
						menuLevel = 0;			
					}
				}
			}
			/*if(key(5))
			{
				sound(snd_select);
				featY[statusView]++;
			}
			else if(key(7))
			{
				sound(snd_select);
				featY[statusView]--;
			}*/
			if(key(10))
			{
				sound(snd_select);
				//destroyFeats();
				instance_destroy(classSelector);
				menuLevel = 7;
			}
		}
		else if(menuLevel == 9) ////////////////////////////////////////////////////////////////////abilities
		{
			if(key(1))
			{
				sound(snd_select);
				abCharSelect++;
				for(be = 0; be < 5; be++)
				{	
					if(abCharSelect > 3) abCharSelect = 0;
					if(abListSize[abCharSelect] == 0) abCharSelect++;
					if(abCharSelect > 3) abCharSelect = 0;
					while(is_undefined(global.party[abCharSelect]))
					{
						abCharSelect++;
						if(abCharSelect > 3) abCharSelect = 0;
						if(abListSize[abCharSelect] == 0) abCharSelect++;
						
					}
				}
			}
			else if(key(3))
			{
				sound(snd_select);
				abCharSelect--;
				if(abCharSelect < 0)abCharSelect = 3;
				for(be = 0; be < 5; be++)
				{
					
					if(abListSize[abCharSelect] == 0) abCharSelect--;
					if(abCharSelect < 0) abCharSelect = 3;
					while(is_undefined(global.party[abCharSelect]))
					{
						abCharSelect--;
						if(abCharSelect < 0) abCharSelect = 3;
						if(abListSize[abCharSelect] == 0) abCharSelect--;
						
					}
					
				}
				
			}
			if(key(5))
			{
				sound(snd_select);
				abSelect[abCharSelect]--;
				if(abSelect[abCharSelect] < 0) abSelect[abCharSelect] = abListSize[abCharSelect]-1;
			}
			else if(key(7))
			{
				sound(snd_select);
				abSelect[abCharSelect]++;
				if(abSelect[abCharSelect] > abListSize[abCharSelect]-1) abSelect[abCharSelect] = 0;
			}
			
			if(key(9))
			{
				sound(snd_select);
				equipAbility(global.party[abCharSelect], abSelect[abCharSelect]);
			}
			
			if(key(10))
			{
				sound(snd_select);
				menuLevel = 0;
			}
		}
		else if(menuLevel == 10) ////////////////////////////////////////////////////////////////////powers
		{
			if(spellMode == 0){//almost always in this state
				if(key(1))
				{
					sound(snd_select);
					powCharSelect++;
					for(be = 0; be < 5; be++)
					{
						if(powCharSelect > 3) powCharSelect = 0;
						if(powListSize[powCharSelect] == 0) powCharSelect++;
					}
				}
				else if(key(3))
				{
					sound(snd_select);
					powCharSelect--;
					for(be = 0; be < 5; be++)
					{
						if(powCharSelect < 0) powCharSelect = 3;
						if(powListSize[powCharSelect] == 0) powCharSelect--;
					}
				}
				if(key(5))
				{
					sound(snd_select);
					powSelect[powCharSelect]--;
					if(powSelect[powCharSelect] < 0){
						powSelect[powCharSelect] = powListSize[powCharSelect]-1;
						if(powListSize[powCharSelect] > powerScreenMax) powerScroll[powCharSelect] = powListSize[powCharSelect] - powerScreenMax-1;
					}
					if(powSelect[powCharSelect] - powerScroll[powCharSelect] < 0) powerScroll[powCharSelect]--;
				}
				else if(key(7))
				{
					sound(snd_select);
					powSelect[powCharSelect]++;
					if(powSelect[powCharSelect] > powListSize[powCharSelect]-1){
						powSelect[powCharSelect] = 0;
						powerScroll[powCharSelect] = 0;
					}
					if(powSelect[powCharSelect] > powerScroll[powCharSelect] + powerScreenMax) powerScroll[powCharSelect]++;
				}
			
				if(key(9))
				{
					sound(snd_select);
					for(bh = 0; bh < ds_list_size(oobPowers); bh++)
					{
						if(ds_list_find_value(global.party[powCharSelect].powers, powSelect[powCharSelect]) == oobPowers[| bh])
						{
							if(oobPowers[| bh] == 349){
								if(global.party[powCharSelect].curSp >= getPowerCost(349) && global.canTeleport) spellMode = 1;
							}else if(oobPowers[| bh] == 348){
								if(global.party[powCharSelect].curSp >= getPowerCost(348) && onWorldMap() && global.vehicle == 0) spellMode = 2;
							}else{
								storePow = ds_list_find_value(global.party[powCharSelect].powers, powSelect[powCharSelect]);
								storeUser = global.party[powCharSelect];
								storeCost = getPowerCost(storePow);
								menuLevel = 11;
							}
						}
					}
				}
			
				if(key(10))
				{
					sound(snd_select);
					ds_list_destroy(oobPowers);
					menuLevel = 0;
				}
			}else if(spellMode == 1){//when it is asking y/n for teleporting
				result = yesNoPrompt(loadMiscLine(2,14), 0, xO+384, yO+384);
				if(result == 1){
					global.party[powCharSelect].curSp -= getPowerCost(349);
					menuLevel = 0;
					sound(snd_select);
					ds_list_destroy(oobPowers);
					if(global.paused == 1)
					{
						ds_list_destroy(miniMenuList);
						ds_list_destroy(availEqList);
						global.paused = 0;
						obj_player.teleporting = true;
					}
				}else if(result == 0){
					sound(snd_select);
					spellMode = 0;
				}
			}else if(spellMode == 2){ //when you are selecting a location to teleport to
				result = teleportPrompt(loadMiscLine(2,15), 0, xO+384, yO+128);
				if(is_struct(result)){
					global.party[powCharSelect].curSp -= getPowerCost(348);
					
					global.teleTarget = result.zone;
					global.teleX = result.xLocation;
					global.teleY = result.yLocation;
					
					if(global.teleX == -1){
						global.teleTarget = global.shipRoom;
						global.teleX = global.shipx;
						global.teleY = global.shipy;
					}else if(global.teleX == -2){
						global.teleTarget = global.airshipRoom;
						global.teleX = global.airshipx;
						global.teleY = global.airshipy;
					}
					
					menuLevel = 0;
					sound(snd_select);
					ds_list_destroy(oobPowers);
					if(global.paused == 1)
					{
						ds_list_destroy(miniMenuList);
						ds_list_destroy(availEqList);
						global.paused = 0;
						obj_mapPlayer.teleporting = true;
					}
				}else if(result == 0){
					sound(snd_select);
					spellMode = 0;
				}
			}
		}
		else if(menuLevel == 11)//////////////////////////////////////////////////////////////////////////////////////////////////out of battle powers
		{
			
			while(is_undefined(global.party[menuSelect[menuLevel,0]]))
			{
				menuSelect[menuLevel,0]++;
				if(menuSelect[menuLevel,0] > menuSize[menuLevel,0]) menuSelect[menuLevel,0] = 0;
			}
			
			draw_sprite(spr_cursor, 0, xO + 40, yO+128+(176*menuSelect[menuLevel,0]));
			if(key(5))
			{
				sound(snd_select);
				menuSelect[menuLevel,0]--;
				if(menuSelect[menuLevel,0]<0) menuSelect[menuLevel,0] = menuSize[menuLevel,0];
				while(is_undefined(global.party[menuSelect[menuLevel,0]]))
				{
					menuSelect[menuLevel,0]--;
					if(menuSelect[menuLevel,0]<0) menuSelect[menuLevel,0] = menuSize[menuLevel,0];
				}
			}
			else if (key(7))
			{
				sound(snd_select);
				menuSelect[menuLevel,0]++;
				if(menuSelect[menuLevel,0] > menuSize[menuLevel,0]) menuSelect[menuLevel,0] = 0;
				while(is_undefined(global.party[menuSelect[menuLevel,0]]))
				{
					menuSelect[menuLevel,0]++;
					if(menuSelect[menuLevel,0] > menuSize[menuLevel,0]) menuSelect[menuLevel,0] = 0;
				}
			}
			/*else if(key(1))
			{
				menuSelect[menuLevel,1]++;
				if(menuSelect[menuLevel,1]>menuSize[menuLevel,1]) menuSelect[menuLevel,1] = 0;
			}
			else if(key(3))
			{
				menuSelect[menuLevel,1]--;
				if(menuSelect[menuLevel,1]<0) menuSelect[menuLevel,1] = menuSize[menuLevel,1];
			}*/
			
			if(key(9))
			{
				sound(snd_select);
				oobPowUse(storePow, storeUser, global.party[menuSelect[menuLevel,0]], storeCost);
			}
			
			if(key(10) || storeUser.curSp < storeCost)
			{
				sound(snd_select);
				menuLevel = 10;
			}
		}
		else if(menuLevel == 3)//////////////////////////////////////////////////////////////////////////////////////////////////out of battle items
		{
			while(is_undefined(global.party[menuSelect[menuLevel,0]]))
			{
				menuSelect[menuLevel,0]++;
				if(menuSelect[menuLevel,0] > menuSize[menuLevel,0]) menuSelect[menuLevel,0] = 0;
			}
			draw_sprite(spr_cursor, 0, xO + 40, yO+128+(176*menuSelect[menuLevel,0]));
			if(key(5))
			{
				sound(snd_select);
				menuSelect[menuLevel,0]--;
				if(menuSelect[menuLevel,0]<0) menuSelect[menuLevel,0] = menuSize[menuLevel,0];
				while(is_undefined(global.party[menuSelect[menuLevel,0]]))
				{
					menuSelect[menuLevel,0]--;
					if(menuSelect[menuLevel,0]<0) menuSelect[menuLevel,0] = menuSize[menuLevel,0];
				}
			}
			else if (key(7))
			{
				sound(snd_select);
				menuSelect[menuLevel,0]++;
				if(menuSelect[menuLevel,0] > menuSize[menuLevel,0]) menuSelect[menuLevel,0] = 0;
				while(is_undefined(global.party[menuSelect[menuLevel,0]]))
				{
					menuSelect[menuLevel,0]++;
					if(menuSelect[menuLevel,0] > menuSize[menuLevel,0]) menuSelect[menuLevel,0] = 0;
				}
			}
			/*else if(key(1))
			{
				menuSelect[menuLevel,1]++;
				if(menuSelect[menuLevel,1]>menuSize[menuLevel,1]) menuSelect[menuLevel,1] = 0;
			}
			else if(key(3))
			{
				menuSelect[menuLevel,1]--;
				if(menuSelect[menuLevel,1]<0) menuSelect[menuLevel,1] = menuSize[menuLevel,1];
			}*/
			
			if(menuItemSwitch(action) == 1)
			{
				if(itemMenu == 0)
				{
					if(global.stock[slotStore,2] == 1)
					{
						menuLevel = 2;
					}
					itemDecrement(slotStore, 1);
				}
				else
				{
					global.party[itemMenu-1].inven[menuSelect[2, itemMenu]] = "";
					global.party[itemMenu-1].inven[menuSelect[2, itemMenu]] = -1;
					menuLevel = 2;
				}
			}
			
			if(key(10))
			{
				sound(snd_select);
				menuLevel = 2;
			}
		}
		else if(menuLevel == 4 || menuLevel == 7)//////////////////////////////////////////////////////////////////////////////////////////////////status screen selecting
		{
			while(global.party[menuSelect[menuLevel,0]] == -1)
			{
				menuSelect[menuLevel,0]++;
				if(menuSelect[menuLevel,0] > menuSize[menuLevel,0]) menuSelect[menuLevel,0] = 0;
			}
			draw_sprite(spr_cursor, 0, xO + 40, yO+128+(176*menuSelect[menuLevel,0]));
			if(key(5))
			{
				sound(snd_select);
				menuSelect[menuLevel,0]--;
				if(menuSelect[menuLevel,0]<0) menuSelect[menuLevel,0] = menuSize[menuLevel,0];
				while(is_undefined(global.party[menuSelect[menuLevel,0]]))
				{
					menuSelect[menuLevel,0]--;
					if(menuSelect[menuLevel,0]<0) menuSelect[menuLevel,0] = menuSize[menuLevel,0];
				}
				
			}
			else if (key(7))
			{
				sound(snd_select);
				menuSelect[menuLevel,0]++;
				if(menuSelect[menuLevel,0] > menuSize[menuLevel,0]) menuSelect[menuLevel,0] = 0;
				while(is_undefined(global.party[menuSelect[menuLevel,0]]))
				{
					menuSelect[menuLevel,0]++;
					if(menuSelect[menuLevel,0] > menuSize[menuLevel,0]) menuSelect[menuLevel,0] = 0;
				}
			}
			
			
			if(key(9))
			{
				sound(snd_select);
				statusView = global.party[menuSelect[menuLevel,0]];
				statusPortrait = spr_portPlaceholder;
				statusName = statusView.name;
				if(menuLevel == 4)menuLevel = 5;
				else if(menuLevel == 7 && !is_undefined(statusView) && statusView.classLevels[statusView.class] >= 10)
				{
					//createFeats(statusView);
					//pointDisplay = instance_create_depth(0, 0, -9999999999, obj_featPointReadout);
					//pointDisplay.character = statusView;
					//pointDisplay.statusName = statusName;
					//pointDisplay.xO = xO;
					//pointDisplay.yO = yO;
					classCharacter = statusView;
					menuSelect[8,0] = classCharacter.class;
					classSelector = instance_create_depth(xO + SCREENW/2, yO + SCREENH/2, -9999999999, obj_classSelector);
					menuLevel = 8;
				}
			}
			
			if(key(10))
			{
				sound(snd_select);
				menuLevel = 0;
			}
		}
		else if(menuLevel == 5)
		{	
			if(key(10))
			{
				sound(snd_select);
				menuLevel = 4;
			}
		}
		else if(menuLevel == 6)//////////////////////////////////////////////////////////////////////////////////////////////////equipment switching
		{
			displayStatPreview(xO+128, yO+480, partyEqSelect);
			/*if(menuSelect[menuLevel,0] < ds_list_size(availEqList)-2)
			{
				for(bd = 0; bd < 16; bd++)
				{
					//hello = availEqList[| menuSelect[menuLevel,0]];
					if(bd < 13)statChanges[bd] = getItemDat(global.stock[availEqList[| menuSelect[menuLevel,0]],0], bd+4) - getItemDat(global.equip[partyEqSelect, eqSlotSelect],bd+4);
					else if(bd == 13) statChanges[bd] = 0;
					else statChanges[bd] = getItemDat(global.stock[availEqList[| menuSelect[menuLevel,0]],0], bd+3) - getItemDat(global.equip[partyEqSelect, eqSlotSelect],bd+3);
				}
			}*/
			draw_sprite(spr_cursor, 0, xO + 744, yO+64+(32*(menuSelect[menuLevel,0]-equipmentScroll)));
			//draw_text(xO + 640, yO+64, string(menuSelect[menuLevel,0]+equipmentScroll))
			if(key(5))
			{
				sound(snd_select);
				menuSelect[menuLevel,0]--;
				
				if(menuSelect[menuLevel,0]-equipmentScroll < 0){
					equipmentScroll--;
				}
				
				if(menuSelect[menuLevel,0]<0) 
				{
					menuSelect[menuLevel,0] = menuSize[menuLevel,0];
					equipmentScroll = menuSelect[menuLevel,0] - maxItems;
					if(equipmentScroll < 0)
					{
						equipmentScroll = 0;
					}
				}
				if(menuSelect[menuLevel, 0] < ds_list_size(availEqList)){
					statPreviewSetup(partyEqSelect, global.stock[availEqList[| menuSelect[menuLevel,0]],0], eqSlotSelect);
				}
				else statPreviewSetup(partyEqSelect, 0, eqSlotSelect);
			}
			else if (key(7))
			{
				sound(snd_select);
				menuSelect[menuLevel,0]++;
				if(menuSelect[menuLevel,0] > menuSize[menuLevel,0]) 
				{
					menuSelect[menuLevel,0] = 0;
					equipmentScroll = 0;
				}
				if(menuSelect[menuLevel,0] > equipmentScroll+maxItems)
				{
					equipmentScroll++;
				}
				
				if(menuSelect[menuLevel, 0] < ds_list_size(availEqList))statPreviewSetup(partyEqSelect, global.stock[availEqList[| menuSelect[menuLevel,0]],0], eqSlotSelect);
				else statPreviewSetup(partyEqSelect, 0, eqSlotSelect);
			}
			
			
			if(key(9))
			{
				sound(snd_select);
				if(menuSelect[menuLevel, 0] < ds_list_size(availEqList))
				{
					manageEquipping(partyEqSelect, partyEqSelect.equipment[eqSlotSelect,0], global.stock[availEqList[| menuSelect[menuLevel,0]],0]);
					partyEqSelect.equipment[eqSlotSelect,0] = global.stock[availEqList[| menuSelect[menuLevel,0]],0];
					itemDecrement(availEqList[| menuSelect[menuLevel,0]], 1);
					stockItem(eqItem,1);
					if(getItemDat(partyEqSelect.equipment[eqSlotSelect,0],0) == 4)
					{
						
						stockItem(partyEqSelect.equipment[1,0], 1);
						partyEqSelect.equipment[1,0] = 0;
						
					}
				}
				else 
				{
					manageEquipping(partyEqSelect, partyEqSelect.equipment[eqSlotSelect,0], 0);
					partyEqSelect.equipment[eqSlotSelect, 0] = 0;
					stockItem(eqItem,1);
				}
				
				
				
				calcParty();
				
				/*eqArray = findEqArray(partyEqSelect);
				eqItem = eqArray[eqSlotSelect];
				if(buildEqList(availEqList, partyEqSelect, eqSlotSelect))menuLevel = 6;*/
				menuSelect[menuLevel, 0] = 0;
				equipmentScroll = 0;
				menuLevel = 1;
			}
			
			if(key(10))
			{
				sound(snd_select);
				menuSelect[menuLevel, 0] = 0;
				menuLevel = 1;
				equipmentScroll = 0;
			}
		}
		
		else if(menuLevel == 5)//////////////////////////////////////////////////////////////////////////////////////////////////status screen
		{	
			if(key(10))
			{
				sound(snd_select);
				menuLevel = 4;
			}
		}
		
		else if(menuLevel == 2)//////////////////////////////////////////////////////////////////////////////////////////////////inventory management
		{
			
			
			
			if(itemMenu == 0 && !miniMenu)
			{
				if(global.roomType == 0)
				{
					itemMenu = 1;
					while(!is_undefined(global.party[itemMenu-1]))
					{
						itemMenu++;
						if(itemMenu > 4)
						{
							itemMenu = 1;
							break;
						}
					}
				}
				menuSize[menuLevel,0] = stockSize();
				draw_sprite(spr_cursor, 0, xO + 64-24, yO+menuY+(menuSpace*(menuSelect[menuLevel,0]-itemScroll)));
				if(key(5))
				{
					sound(snd_select);
					menuSelect[menuLevel,0]--;
					if(menuSelect[menuLevel,0]<0) 
					{
						menuSelect[menuLevel,0] = menuSize[menuLevel,0];
						itemScroll = menuSelect[menuLevel,0] - maxItems+1;
						if(itemScroll < 0)
						{
							itemScroll = 0;
						}
					}
					else if(menuSelect[menuLevel,0] < itemScroll)
					{
						itemScroll--;
					}
				
				}
				else if (key(7))
				{
					sound(snd_select);
					menuSelect[menuLevel,0]++;
					if(menuSelect[menuLevel,0] > menuSize[menuLevel,0]) 
					{
						menuSelect[menuLevel,0] = 0;
						itemScroll = 0;
					}
					if(menuSelect[menuLevel,0] > itemScroll+maxItems-1)
					{
						itemScroll++;
					}
				}
				else if(key(1))
				{
					sound(snd_select);
					itemMenu = 1;
					while(is_undefined(global.party[itemMenu-1]))
					{
						itemMenu++;
						if(itemMenu > 4)
						{
							itemMenu = 0;
							if(global.roomType == 0)
							{
								itemMenu = 1;
							}
						}
						if(itemMenu == 0) break;
					}
				}
				else if(key(3))
				{
					sound(snd_select);
					itemMenu = 4;
					while(is_undefined(global.party[itemMenu-1]))
					{
						itemMenu--;
						if(itemMenu < 0) itemMenu = 4;
						if(itemMenu == 0) break;
					}
				}
			
				if(key(9) && global.roomType != 0)
				{
					sound(snd_select);
					if(itemMode == 0 && global.stock[menuSelect[menuLevel,0],0] != -1)
					{
						buildMenu(global.stock[menuSelect[menuLevel,0],0],0);
						miniMenu = true;
					}
					else if(itemMode == 1)
					{
						if(global.stock[menuSelect[menuLevel,0],0] != -1)
						{
							global.stock[slotStore, 0] = global.stock[menuSelect[menuLevel,0],0];
							global.stock[slotStore, 1] = global.stock[menuSelect[menuLevel,0],1];
							global.stock[slotStore, 2] = global.stock[menuSelect[menuLevel,0],2];
							global.stockN[slotStore] = global.stockN[menuSelect[menuLevel,0]];
						}
						else
						{
							global.stock[slotStore, 0] = -1;
							global.stock[slotStore, 1] = -1;
							global.stock[slotStore, 2] = 0;
							global.stockN[slotStore] = "";
						}
						global.stock[menuSelect[menuLevel,0],0] = itemStore[0];
						global.stock[menuSelect[menuLevel,0],1] = itemStore[1];
						global.stock[menuSelect[menuLevel,0],2] = itemStore[2];
						global.stockN[menuSelect[menuLevel,0]] = nameStore;
						itemMode = 0;
					}
				}
				
				
				
				
			}
			
			else if(itemMenu != 0 && !miniMenu && global.party[itemMenu-1] != -1)
			{
				menuSize[menuLevel,itemMenu] = global.party[itemMenu-1].invenSize-1;
				draw_sprite(spr_cursor, 0, xO + 104 + (170*(itemMenu)), yO + 80 + menuSelect[menuLevel,itemMenu]*32);
				if(key(5))
				{
					sound(snd_select);
					menuSelect[menuLevel,itemMenu]--;
					if(menuSelect[menuLevel,itemMenu]<0) 
					{
						menuSelect[menuLevel,itemMenu] = menuSize[menuLevel,itemMenu];
					}
				}
				else if (key(7))
				{
					sound(snd_select);
					menuSelect[menuLevel,itemMenu]++;
					if(menuSelect[menuLevel,itemMenu] > menuSize[menuLevel,itemMenu]) 
					{
						menuSelect[menuLevel,itemMenu] = 0;
					}
				}
				else if(key(1))
				{
					sound(snd_select);
					menuBase = itemMenu;
					itemMenu++;
					if(itemMenu > 4)
					{
						if(global.roomType != 0)itemMenu = 0;
						else itemMenu = 1;
					}
					if(itemMenu != 0)
					{
						while(global.party[itemMenu-1] == -1 || (global.roomType == 0 && itemMenu == 0))
						{
							itemMenu++;
							if(itemMenu > 4) 
							{
								if(global.roomType != 0)itemMenu = 0;
								else itemMenu = 1;
							}
							if(itemMenu == 0 && global.roomType != 0) break;
							else if(global.roomType == 0 && itemMenu == 0) itemMenu = 1;
							
							if(itemMenu == menuBase) break;
						}
					}
				}
				else if(key(3))
				{
					sound(snd_select);
					menuBase = itemMenu;
					itemMenu--;
					if(itemMenu == 0 && global.roomType == 0)
					{
						itemMenu = 4;
					}
					if(itemMenu > 0)
					{
						while(global.party[itemMenu-1] == -1)
						{
							itemMenu--;
							if(global.roomType == 0 && itemMenu < 1) itemMenu = 4;
							else if(global.roomType != 0 && itemMenu < 1) break;
							//if(itemMenu < 0) 
							//{
								//itemMenu = 4;
							//}
							if(itemMenu == menuBase) break;
						}
					}
				}
				
				if(key(9) && itemMenu > 0)
				{
					sound(snd_select);
					if(itemMode == 0 && global.party[itemMenu-1].inven[menuSelect[menuLevel,itemMenu]])//global.partItems[global.party[itemMenu-1,0], menuSelect[menuLevel,itemMenu]] != -1)
					{
						buildMenu(global.party[itemMenu-1].inven[menuSelect[menuLevel,itemMenu]],itemMenu);
						miniMenu = true;
					}
					else if(itemMode == 1 && (itemStore[1] == 0 || itemStore[1] == 8))
					{
						//check = itemStore[0];
						giveItem(itemStore[0], global.party[itemMenu-1], menuSelect[menuLevel,itemMenu]);
						itemDecrement(slotStore, 1);
						itemMode = 0;
					}
				}
				
				if(key(10))
				{
					sound(snd_select);
					if(itemMode == 0)
					{
						itemMenu = 0;
						menuLevel = 0;
					}
					else itemMode = 0;
				}
			}
			else if(miniMenu)
			{
				depth = level1;
				miniSize = ds_list_size(miniMenuList)-1;
				
				depth = baseDepth;
				if(key(5) && !trashCount)
				{
					sound(snd_select);
					miniSelect--;
					if(miniSelect<0) 
					{
						miniSelect = miniSize;
					}
				}
				else if (key(7) && !trashCount)
				{
					sound(snd_select);
					miniSelect++;
					if(miniSelect > miniSize) 
					{
						miniSelect = 0;
					}
				}
				else if(key(1) && trashCount)
				{
					sound(snd_select);
					trashNum++;
					if(trashNum > trashMax) trashNum = 0;
				}
				else if(key(3) && trashCount)
				{
					sound(snd_select);
					trashNum--;
					if(trashNum < 0) trashNum = trashMax;
				}
				if(key(9))
				{
					sound(snd_select);
					if(!trashCount)
					{
						if(miniMenuList[| miniSelect] == 0)
						{
							if(itemMenu == 0)
							{
								itemStore[0] = global.stock[menuSelect[menuLevel,0],0];
								itemStore[1] = global.stock[menuSelect[menuLevel,0],1];
								itemStore[2] = global.stock[menuSelect[menuLevel,0],2];
							}
							else
							{
								itemStore[0] = global.party[itemMenu-1].inven[menuSelect[2,itemMenu]];//global.partItems[global.party[itemMenu-1,0], menuSelect[2, itemMenu]];
								itemStore[1] = getItemDat(global.party[itemMenu-1].inven[menuSelect[2,itemMenu]], 0);
								itemStore[2] = 1;
							}
							action = getItemDat(itemStore[0], 25);
							nameStore = global.stockN[menuSelect[menuLevel,0]];
							slotStore = menuSelect[menuLevel,0];
							miniMenu = false;
							menuLevel = 3;
						}
						else if(miniMenuList[| miniSelect] == 1)
						{
							itemMode = 1;
							itemStore[0] = global.stock[menuSelect[menuLevel,0],0];
							itemStore[1] = global.stock[menuSelect[menuLevel,0],1];
							itemStore[2] = global.stock[menuSelect[menuLevel,0],2];
							nameStore = global.stockN[menuSelect[menuLevel,0]];
							slotStore = menuSelect[menuLevel,0];
							miniMenu = false;
						}
						else if(miniMenuList[| miniSelect] == 2)
						{
							trashCount = true;
							if(itemMenu == 0)
							{
								trashMax = global.stock[menuSelect[menuLevel,0],2];
							}
							else trashMax = 1;
							trashNum = 0;
						}
						else if(miniMenuList[| miniSelect] == 3)
						{
							miniSelect = 0;
							miniMenu = false;
						}
						else if(miniMenuList[| miniSelect] == 4)
						{
							stockItem(global.party[itemMenu-1].inven[menuSelect[menuLevel, itemMenu]], 1)
							global.party[itemMenu-1].inven[menuSelect[menuLevel, itemMenu]] = -1;
							
							miniSelect = 0;
							miniMenu = false;
						}
						else if(miniMenuList[| miniSelect] == 5)
						{
							sortStock();
							miniSelect = 0;
							miniMenu = false;
						}
					}
					else
					{
						if(itemMenu == 0)
						{
							itemDecrement(menuSelect[menuLevel,0], trashNum);
						}
						else
						{
							if(trashNum > 0)
							{
								global.party[itemMenu-1].inven[menuSelect[menuLevel, itemMenu]] = -1;
							}
						}
						trashCount = false;
						trashNum = 0;
						miniMenu = false;
					}
				}
				if(key(10))
				{
					sound(snd_select);
					if(!trashCount)
					{
						miniSelect = 0;
						miniMenu = false;
					}
					else trashCount = false;
				}
			}
			if(key(10))
			{
				sound(snd_select);
				if(itemMode == 0)menuLevel = 0;
				else itemMode = 0;
			}
			
		}
		else if(menuLevel == 12)/////////////////////////////////////////////////////////////Formation
		{
			/*draw_text(xO + 100, yO + 100, storeForm[0]);
			draw_text(xO + 100, yO + 116, storeForm[1]);
			draw_text(xO + 100, yO + 132, storeForm[2]);
			draw_text(xO + 100, yO + 148, tempPos[global.party[1,0],1]);
			draw_text(xO + 100, yO + 164, tempPos[global.party[1,0],2]);*/
			if(key(5))
			{
				sound(snd_select);
				formGrSel[1]--;
				if(formGrSel[1] < 0) formGrSel[1] = 3;
			}
			else if(key(7))
			{
				sound(snd_select);
				formGrSel[1]++;
				if(formGrSel[1] > 3) formGrSel[1] = 0;
			}
			else if(key(1))
			{
				sound(snd_select);
				formGrSel[0]++;
				if(formGrSel[0] > 3) formGrSel[0] = 0;
			}
			if(key(3))
			{
				sound(snd_select);
				formGrSel[0]--;
				if(formGrSel[0] < 0) formGrSel[0] = 3;
			}
			
			if(key(9))
			{
				sound(snd_select);
				
				if(memberSelected == -1)
				{
					for(bl = 0; bl <= 3; bl++)
					{
						if(!is_undefined(global.party[bl]))
						{
							if(global.party[bl].tempPos[0] == formGrSel[0] && global.party[bl].tempPos[1] == formGrSel[1])
							{
								storeForm[0] = global.party[bl];
								storeForm[1] = global.party[bl].tempPos[0];
								storeForm[2] = global.party[bl].tempPos[1];
								memberSelected = global.party[bl];
								
							}
							
						}
					}
				}
				else if(formationGreenbox)
				{
					for(bl = 0; bl <= 3; bl++)
					{
						if(!is_undefined(global.party[bl]))
						{
							if(global.party[bl].tempPos[0] == formGrSel[0] && global.party[bl].tempPos[1] == formGrSel[1])
							{
								global.party[bl].tempPos[0] = storeForm[1];
								global.party[bl].tempPos[1] = storeForm[2];
							}
						}
					}
					memberSelected.tempPos[0] = formGrSel[0];
					memberSelected.tempPos[1] = formGrSel[1];
					memberSelected = -1;
					storeForm[0] = -1;
					storeForm[1] = -1;
					storeForm[2] = -1;
				}
				formationGreenbox = false;
			}
			
			if(key(10))
			{
				sound(snd_select);
				for(bl = 0; bl <= 3; bl++)
				{
					if(!is_undefined(global.party[bl]))
					{
						global.party[bl].formPositionX = global.party[bl].tempPos[0];
						global.party[bl].formPositionY = global.party[bl].tempPos[1];
					}
				}
				orderParty();
				menuLevel = 0;
			}
		}
		else if(menuLevel == 13)//////////////////////////////////////////////////Saving
		{
			
			draw_sprite(spr_cursor, 0, xO + 64-24, yO+menuY+(menuSpace*(menuSelect[menuLevel,0]-saveScroll)));
			if(key(5))
			{
				sound(snd_select);
				if(saveMenu == 0)
				{
					menuSelect[menuLevel,0]--;
					if(menuSelect[menuLevel,0]<0) 
					{
						menuSelect[menuLevel,0] = menuSize[menuLevel,0];
						saveScroll = menuSelect[menuLevel,0] - maxItems+1;
						if(saveScroll < 0)
						{
							saveScroll = 0;
						}
					}
					else if(menuSelect[menuLevel,0] < saveScroll)
					{
						saveScroll--;
					}
				}
				
			}
			else if (key(7))
			{
				sound(snd_select);
				if(saveMenu == 0)
				{
					menuSelect[menuLevel,0]++;
					if(menuSelect[menuLevel,0] > menuSize[menuLevel,0]) 
					{
						menuSelect[menuLevel,0] = 0;
						saveScroll = 0;
					}
					if(menuSelect[menuLevel,0] > saveScroll+maxItems-1)
					{
						saveScroll++;
					}
				}
			}
			if(key(9))
			{
				sound(snd_select);
				if(saveMenu == 1)
				{
					if(saveYN == 1)
					{
						global.saveFileNumber = menuSelect[menuLevel,0];
						saveGame(menuSelect[menuLevel,0]);
						saveYN = 0;
						saveMenu = 2;
					}
					else 
					{
						saveMenu = 0;
					}
				}
				else
				{
					saveMenu = 1;
				}
			}
			
			if(saveMenu == 1)
			{
				if(key(1) || key(3))
				{
					sound(snd_select);
					if(saveYN == 0)
					{
						saveYN = 1;
					}
					else saveYN = 0;
				}
			}
			
			if(key(10))
			{
				sound(snd_select);
				if(saveMenu == 0)
				{

					menuLevel = 0;
				}
				else saveMenu = 0;
			}
		}
		else if(menuLevel == 14){ //settings
			if(quitMode == 0){
				if(key(5))
				{
					sound(snd_select)
					menuSelect[menuLevel,0]--;
					if(menuSelect[menuLevel,0]<0) 
					{
						menuSelect[menuLevel,0] = menuSize[menuLevel,0];
					}
				
				}
				else if (key(7))
				{
					sound(snd_select);
					menuSelect[menuLevel,0]++;
					if(menuSelect[menuLevel,0] > menuSize[menuLevel,0]) 
					{
						menuSelect[menuLevel,0] = 0;
					}
				}
			
				if(key(1)){
					sound(snd_select);
					if(menuSelect[menuLevel,0] == 0){
						global.sfxGain+=0.1;
						if(global.sfxGain > 1) global.sfxGain = 1;
					}
					else if(menuSelect[menuLevel,0] == 1){
						global.musicGain+=0.1;
						if(global.musicGain > 1) global.musicGain = 1;
					}
				}else if(key(3)){
					sound(snd_select);
					if(menuSelect[menuLevel,0] == 0){
						global.sfxGain-=0.1;
						if(global.sfxGain < 0) global.sfxGain = 0;
					}
					else if(menuSelect[menuLevel,0] == 1){
						global.musicGain-=0.1;
						if(global.musicGain < 0) global.musicGain = 0;
					}
				}
			
				if(key(9)){
					if(menuSelect[menuLevel,0] == 2){
						quitMode = 1;
					}else if(menuSelect[menuLevel,0] == 3){
						quitMode = 2;
					}
				}
			
				if(key(10)){
					sound(snd_select);
					menuLevel = 0;
					ini_open("settings.ini");
					ini_write_real("volume", "sfx", global.sfxGain);
					ini_write_real("volume", "music", global.musicGain);
					ini_close();
				}
			}else{
				result = yesNoPrompt(loadMiscLine(2,16),0,xO+384, yO+384);
				if(result == 1){
					if(quitMode == 1){
						game_restart();
					}else if(quitMode == 2){
						game_end();
					}
				}else if(result == 0){
					quitMode = 0;
				}
			}
		}
		
		
		//Displays the stats or equipment of the party.//////////////////////////////////////////////
		if(menuLevel == 0 || menuLevel == 3 || menuLevel == 4 || menuLevel == 7 || menuLevel == 11)
		{
			displayPartyStats(xO, yO, true);
		}
		else if(menuLevel == 1)
		{
			displayPartyStats(xO, yO, false);
		}
		////////////////////////////////////////////////////////////////////////////////////////////
		
		
		
		if(menuLevel == 0 || menuLevel == 1 || menuLevel == 3 || menuLevel == 4 || menuLevel == 7 || menuLevel == 11)
		{
			displayPauseMenu(xO, yO);
		}
		
		if(menuLevel == 2)
		{
			draw_text(xO + 64, yO + 40, "Stock");
			if(global.roomType == 0)draw_set_colour(global.textC[1]);
			for(a=0; a < maxItems; a++)
			{
				if(global.stock[a+itemScroll,0] != -1)
				{
					if(itemMode != 1 || a+itemScroll != slotStore)
					{
						draw_text(xO + 64, yO + 80 + a*32, getItemName(global.stock[a+itemScroll, 0]));
						draw_text(xO + 64 + 175, yO + 80 + a*32, global.stock[a+itemScroll,2]);
					}
					else if(blinkSwitcher == 1)
					{
						draw_text(xO + 64, yO + 80 + a*32, getItemName(global.stock[a+itemScroll, 0]));
						draw_text(xO + 64 + 175, yO + 80 + a*32, global.stock[a+itemScroll,2]);
					}
				}
				else
					draw_text(xO + 64, yO + 80 + a*32, "_");
			}
			draw_set_colour(global.textC[0]);
			
			for(ac = 0; ac < 4; ac++)
			{
				if(!is_undefined(global.party[ac]))
				{
					draw_text(xO + 128 + (170*(ac+1)), yO + 40, global.party[ac].name);
					for(a=0; a < global.party[ac].invenSize; a++)
					{
						if(global.party[ac].inven[a] != -1)
						{
							draw_text(xO + 128 + (170*(ac+1)), yO + 80 + a*32, getItemName(global.party[ac].inven[a]));
						}
						else
							draw_text(xO + 128 + (170*(ac+1)), yO + 80 + a*32, "_");
					}
				}
			}
			
			if(itemMenu == 0)draw_text_ext(xO + 64, yO+640, getItemDes(global.stock[menuSelect[menuLevel,0],0]), 16, 1024-128);
			else if(!is_undefined(global.party[itemMenu-1]) != -1)draw_text_ext(xO + 64, yO+640, getItemDes(global.party[itemMenu-1].inven[menuSelect[menuLevel, itemMenu]]), 16, 1024-128);
			
			if(miniMenu)
			{
				if(!trashCount)
				{
					if(itemMenu == 0)draw_sprite(spr_miniMenu, 0, xO + 104 + (170*(itemMenu))+32, yO + 80 + menuSelect[menuLevel,itemMenu]*32 - (itemScroll*32));
					else draw_sprite(spr_miniMenu, 0, xO + 104 + (170*(itemMenu))+32, yO + 80 + menuSelect[menuLevel,itemMenu]*32);
					if(itemMenu == 0)draw_sprite(spr_cursor, 0, xO + 104 + (170*(itemMenu))+24, yO + 64 + menuSelect[menuLevel,itemMenu]*32+(32*(miniSelect+1)) - (itemScroll*32));
					else draw_sprite(spr_cursor, 0, xO + 104 + (170*(itemMenu))+24, yO + 64 + menuSelect[menuLevel,itemMenu]*32+(32*(miniSelect+1)));
					for(ad = 0; ad < ds_list_size(miniMenuList); ad++)
					{
						depth = level2;
					
						xd = xO + 104 + (170*(itemMenu))+56;
						yd = yO + 64 + menuSelect[menuLevel,itemMenu]*32+(32*(ad+1));
						if(itemMenu == 0) yd -= (itemScroll*32);
					
						if(miniMenuList[| ad] == 0)
						{
							draw_text(xd, yd, "Use");
						}
						else if(miniMenuList[| ad] == 1)
						{
							draw_text(xd, yd, "Swap");
						}
						else if(miniMenuList[| ad] == 2)
						{
							draw_text(xd, yd, "Trash");
						}
						else if(miniMenuList[| ad] == 4)
						{
							draw_text(xd, yd, "Take");
						}
						else if(miniMenuList[| ad] == 5)
						{
							draw_text(xd, yd, "Sort");
						}
						else if(miniMenuList[| ad] == 3)
						{
							draw_text(xd, yd, "Cancel");
						}
						depth = baseDepth;
					}
				}
				else
				{
					if(itemMenu == 0)draw_sprite(spr_miniMenu2, 0, xO + 104 + (170*(itemMenu))+32, yO + 80 + menuSelect[menuLevel,itemMenu]*32 - (itemScroll*32));
					else draw_sprite(spr_miniMenu2, 0, xO + 104 + (170*(itemMenu))+32, yO + 80 + menuSelect[menuLevel,itemMenu]*32);
					//if(itemMenu == 0)draw_sprite(spr_cursor, 0, xO + 104 + (170*(itemMenu))+24, yO + 80 + menuSelect[menuLevel,itemMenu]*32+(32*(miniSelect+1)) - (itemScroll*32));
					//else draw_sprite(spr_cursor, 0, xO + 104 + (170*(itemMenu))+24, yO + 80 + menuSelect[menuLevel,itemMenu]*32+(32*(miniSelect+1)));
					xd = xO + 104 + (170*(itemMenu))+56;
					yd = yO + 80 + menuSelect[menuLevel,itemMenu]*32+8;
					if(itemMenu == 0) yd -= (itemScroll*32);
					
					draw_text(xd, yd, trashNum);

				}
			}
			
			
		}
		
		if(menuLevel == 5)
		{
			draw_sprite_ext(partyP(statusView), 0, xO+128, yO+176, 2, 2, 0, c_white, 1 );
			j = 0;
			draw_text(xO + 64, yO+224, "Class Levels:")
			for(i = 0; i < global.numberOfClasses; i++){
				if(statusView.classLevels[i] > 0){
					draw_text(xO + 64 + (floor(j/5)*128), yO + 256 + (32*(j%6)), getClassName(i) + ": " + string(statusView.classLevels[i]));
					j++;
				}
			}
			
			if(statusView.conditions[16] > 0)
			{
				draw_sprite(spr_poisonIcon, 0, xO + 64, yO + 368); 
			}
			else if(statusView.conditions[21] > 0)
			{
				draw_sprite(spr_blindIcon, 0, xO + 80, yO + 368); 
			}
			
			draw_text(xO + 64, yO + 64, statusName);
			draw_text(xO + 384, yO + 64, "Level: ");
			draw_text(xO + 384, yO + 96, "Hit Points: ")
			draw_text(xO + 640, yO + 96, "Skill Points: ")
			draw_text(xO + 384, yO + 160, "Strength: ");
			draw_text(xO + 384, yO + 224, "Fortitude: ");
			draw_text(xO + 384, yO + 304, "Dexterity: ");
			draw_text(xO + 384, yO + 368, "Agility: ");
			draw_text(xO + 640, yO + 160, "Intellect: ");
			draw_text(xO + 640, yO + 224, "Wisdom: ");
			draw_text(xO + 640, yO + 304, "Charisma: ");
			draw_text(xO + 640, yO + 368, "Spirit: ");
					
			draw_text(xO + 512, yO + 96, string(statusView.curHp));
			draw_text(xO + 556, yO + 96, "/");
			draw_text(xO + 576, yO + 96, string(statusView.maxHp));
			
			draw_text(xO + 768, yO + 96, string(statusView.curSp));
			draw_text(xO + 812, yO + 96, "/");
			draw_text(xO + 832, yO + 96, string(statusView.maxSp));
			
			draw_text(xO + 512, yO + 64, string(statusView.level));
			draw_text(xO + 512, yO + 160, string(statusView.str));
			draw_text(xO + 512, yO + 224, string(statusView.frt));
			draw_text(xO + 512, yO + 304, string(statusView.dex));
			draw_text(xO + 512, yO + 368, string(statusView.agi));
			draw_text(xO + 768, yO + 160, string(statusView.int));
			draw_text(xO + 768, yO + 224, string(statusView.wis));
			draw_text(xO + 768, yO + 304, string(statusView.cha));
			draw_text(xO + 768, yO + 368, string(statusView.spr));
			
			draw_text(xO + 64, yO + 416, "Physical Attack: ");
			draw_text(xO + 64, yO + 448, "Physical Defense: ");
			draw_text(xO + 64, yO + 480, "Speed: ");
			draw_text(xO + 64, yO + 512, "Accuracy: ");
			draw_text(xO + 64, yO + 544, "Evasion: ");
			draw_text(xO + 64, yO + 576, "Arcane Magic Power: ");
			draw_text(xO + 64, yO + 608, "Divine Magic Power: ");
			draw_text(xO + 64, yO + 640, "Arcane Magic Level: ");
			draw_text(xO + 320, yO + 416, "Heat Resistance: ");
			draw_text(xO + 320, yO + 448, "Cold Resistance: ");
			draw_text(xO + 320, yO + 480, "Electric Resistance: ");
			draw_text(xO + 320, yO + 512, "Poison Resistance: ");
			draw_text(xO + 320, yO + 544, "Aether Resistance: ");
			draw_text(xO + 320, yO + 576, "Vital Resistance: ");
			draw_text(xO + 320, yO + 608, "Mind Resistance: ");
			draw_text(xO + 320, yO + 640, "Divine Magic Level: ");
			
			draw_text(xO + 640, yO + 454, "Personality: ");
			draw_text(xO + 768, yO + 454, getPersonalityName(statusView.personality));
			
			draw_text(xO + 640, yO + 496, "Experience: ");
			draw_text(xO + 768, yO + 496, statusView.xp);
			
			draw_text(xO + 640, yO + 528, "To Next Level: ");
			draw_text(xO + 768, yO + 528, string(global.xpThresholds[statusView.level+1]-statusView.xp));
			
			
			draw_text(xO + 256, yO + 416, statusView.pAtk);
			draw_text(xO + 256, yO + 448, statusView.pDef);
			draw_text(xO + 256, yO + 480, statusView.spd);
			draw_text(xO + 256, yO + 512, statusView.acc);
			draw_text(xO + 256, yO + 544, statusView.eva);
			draw_text(xO + 256, yO + 576, statusView.amAtk);
			draw_text(xO + 256, yO + 608, statusView.dmAtk);
			draw_text(xO + 256, yO + 640, statusView.amLevel);
			draw_text(xO + 512, yO + 416, statusView.hRes);
			draw_text(xO + 512, yO + 448, statusView.cRes);
			draw_text(xO + 512, yO + 480, statusView.eRes);
			draw_text(xO + 512, yO + 512, statusView.pRes);
			draw_text(xO + 512, yO + 544, statusView.aRes);
			draw_text(xO + 512, yO + 576, statusView.vRes);
			draw_text(xO + 512, yO + 608, statusView.mRes);
			draw_text(xO + 512, yO + 640, statusView.dmLevel);
		}
		else if(menuLevel == 6)
		{
			bc = 0;
			for(bd = 0; bd < 16; bd++)
			{
				if(statChanges[bd] != 0)
				{
					switch(bd)
					{
						case 0: changeString = "Physical Attack ";
						break;
						case 1: changeString = "Physical Defense ";
						break;
						case 2: changeString = "Speed ";
						break;
						case 3: changeString = "Hit Rate ";
						break;
						case 4: changeString = "Evasiveness ";
						break;
						case 5: changeString = "Magic Attack ";
						break;
						case 6: changeString = "Heat Resistance ";
						break;
						case 7: changeString = "Cold Resistance ";
						break;
						case 8: changeString = "Electric Resistance ";
						break;
						case 9: changeString = "Poison Resistance ";
						break;
						case 10: changeString = "Aether Resistance ";
						break;
						case 11: changeString = "Vital Resistance ";
						break;
						case 12: changeString = "Mind Resistance ";
						break;
						case 13: changeString = "Wait ";
						break;
						case 14: changeString = "Hit Points ";
						break;
						case 15: changeString = "Skill Points ";
						break;
					}
					if(statChanges[bd] > 0) 
					{
						changeColor = c_green;
						changeString += "+" + string(statChanges[bd]);
					}
					else if(statChanges[bd] < 0) 
					{
						changeColor = c_red;
						changeString += string(statChanges[bd]);
					}
					else 
					{
						changeColor = c_white
						changeString += "+" + string(statChanges[bd]);
					}
					
					draw_text_colour(xO + 64, yO + (416 + (bc*24)), changeString, changeColor, changeColor, changeColor, changeColor, 1);
					bc++;
				}
			}
			
			draw_sprite_ext(statusPortrait, 0, xO+256, yO+320, 2, 2, 0, c_white, 1 );
			//draw_sprite_ext(statusPortrait, 0, xO+64, yO+96, 256/sprite_get_width(statusPortrait), 256/sprite_get_height(statusPortrait), 0, c_white, 1 );
			displayLength = ds_list_size(availEqList)+1;
			if(displayLength > maxItems+1) displayLength = maxItems+1;
			
			
			for(ah = 0; ah < displayLength; ah++)
			{
				if(ah+equipmentScroll < ds_list_size(availEqList)){
					draw_text(xO + 768, yO + 64 + (32*ah), global.stockN[availEqList[| ah+equipmentScroll]]);
				}
				else draw_text(xO + 768, yO + 64 + (32*ah), "Take off");
			}
			if(menuSelect[menuLevel, 0] < ds_list_size(availEqList)) draw_text_ext(xO + 64, yO+640, getItemDes(global.stock[availEqList[| menuSelect[menuLevel,0]],0]), 16, 1024-128);
		}
		else if(menuLevel == 8)
		{
			depth = -999999999;
			
			
			draw_sprite(spr_selBox, 0, xO + 512, yO + 372);
			depth = baseDepth;
		}
		else if(menuLevel == 9)
		{
			for(ac = 0; ac < 4; ac++)
			{
				if(!is_undefined(global.party[ac]))
				{
					draw_text(xO + 128 + (170*(ac+1)), yO + 32, global.party[ac].name);
					draw_text(xO + 128 + (170*(ac+1)), yO + 48, string(global.party[ac].curAp) + "/" + string(global.party[ac].maxAp));
					for(a=0; a < ds_list_size(global.party[ac].abilities); a++)
					{
						if(ds_list_find_value(global.party[ac].abilities, a)[1])draw_text_colour(xO + 128 + (170*(ac+1)), yO + 80 + a*32, getAbilityName(ds_list_find_value(global.party[ac].abilities, a)[0]),upColor,upColor,upColor,upColor,1);
						else draw_text(xO + 128 + (170*(ac+1)), yO + 80 + a*32, getAbilityName(ds_list_find_value(global.party[ac].abilities,a)[0]));
					}
				}
			}
			if(!is_undefined(global.party[abCharSelect]))
			{
				draw_text_ext(xO + 64, yO+624, "Cost: " + string(getAbilityCost(ds_list_find_value(global.party[abCharSelect].abilities, abSelect[abCharSelect])[0])), 16, 1024-128);
				draw_text_ext(xO + 64, yO+640, getAbilityDescription(ds_list_find_value(global.party[abCharSelect].abilities, abSelect[abCharSelect])[0]), 16, 1024-128);
				draw_sprite(spr_cursor, 0, xO + 104 + (170*(abCharSelect+1)), yO + 80 + (abSelect[abCharSelect]*32));
			}
		}
		else if(menuLevel == 10)
		{
			for(ac = 0; ac < 4; ac++)
			{
				if(!is_undefined(global.party[ac]))
				{
					draw_text(xO + 128 + (170*(ac+1)), yO + 32, global.party[ac].name);
					draw_text(xO + 128 + (170*(ac+1)), yO + 48, string(global.party[ac].curSp) + "/" + string(global.party[ac].maxSp));
					for(a=0; a < ds_list_size(global.party[ac].powers) && a <= powerScreenMax; a++)
					{
						draw_text(xO + 128 + (170*(ac+1)), yO + 80 + a*32, string(getPowerName(ds_list_find_value(global.party[ac].powers,a+powerScroll[ac]))));
					}
				}
			}
			if(!is_undefined(global.party[powCharSelect]))
			{
				draw_text_ext(xO + 64, yO+624, "Cost: " + string(getPowerCost(ds_list_find_value(global.party[powCharSelect].powers, powSelect[powCharSelect]))), 16, 1024-128);
				draw_text_ext(xO + 64, yO+640, string(getPowerDescription(ds_list_find_value(global.party[powCharSelect].powers, powSelect[powCharSelect]))), 16, 1024-128);
				draw_sprite(spr_cursor, 0, xO + 104 + (170*(powCharSelect+1)), yO + 80 + ((powSelect[powCharSelect]-powerScroll[powCharSelect])*32));
			}
		}
		else if(menuLevel == 12)
		{
			//not allowed to leave empty rows
			columnEmpty[3] = true;
			columnEmpty[2] = true;
			columnEmpty[1] = true;
			columnEmpty[0] = true;
			for(l = 0; l < 4; l++){
				if(global.party[l].tempPos[0] > -1)columnEmpty[global.party[l].tempPos[0]] = false;
			}
			for(l = 0; l < 4; l++){
				if(!is_undefined(global.party[l]))
				{
					while(global.party[l].tempPos[0] != 0 && columnEmpty[global.party[l].tempPos[0]-1]){
						global.party[l].tempPos[0] -= 1;
					}
				}
			}
			
			for(bi = 0; bi <= 3; bi++)
			{
				for(bj = 0; bj <= 3; bj++)
				{
					draw_sprite(spr_gridSquare, 0, xO + (SCREENW/2) + ((-2+bi)*64), yO + (SCREENH/2) + ((-2+bj)*64));
					if(bi == formGrSel[0] && bj == formGrSel[1]){//This part handles the color of the selection reticle
						if(memberSelected == -1)//while selecting a character
						{
							memberOnSlot = 0;
							for(l = 0; l < 4; l++){
								if(!is_undefined(global.party[l]) && global.party[l].tempPos[0] == formGrSel[0] && global.party[l].tempPos[1] == formGrSel[1])
									memberOnSlot = true;
							}
							if(memberOnSlot)draw_sprite(spr_greenBoxLarge, 0, xO + (SCREENW/2) + ((-2+bi)*64)+32, yO + (SCREENH/2) + ((-2+bj)*64)+32);
							else draw_sprite(spr_redBoxLarge, 0, xO + (SCREENW/2) + ((-2+bi)*64)+32, yO + (SCREENH/2) + ((-2+bj)*64)+32);
						}
						else//while a character is selected
						{
							if(bi == 0) {
								draw_sprite(spr_greenBoxLarge, 0, xO + (SCREENW/2) + ((-2+bi)*64)+32, yO + (SCREENH/2) + ((-2+bj)*64)+32);
								formationGreenbox = true;
							}
							else{
								flankedOrBlocked = false;
								for(l = 0; l < 4; l++)
								{
									if(!is_undefined(global.party[l]) && global.party[l] != memberSelected){
										if(global.party[l].tempPos[0] == bi || global.party[l].tempPos[0] == bi - 1)
										{
											if(global.party[l].tempPos[1] == bj || global.party[l].tempPos[1] == bj - 1 || global.party[l].tempPos[1] == bj + 1)
											{
												flankedOrBlocked = true;
											}
										}
									}
								}
								if(flankedOrBlocked){
									draw_sprite(spr_greenBoxLarge, 0, xO + (SCREENW/2) + ((-2+bi)*64)+32, yO + (SCREENH/2) + ((-2+bj)*64)+32);
									formationGreenbox = true;
								}
								else {
									draw_sprite(spr_redBoxLarge, 0, xO + (SCREENW/2) + ((-2+bi)*64)+32, yO + (SCREENH/2) + ((-2+bj)*64)+32);
									formationGreenbox = false;
								}
								
							}
						}
					}
					for(bk = 0; bk < 4; bk++)
					{
						//draw_text(xO+100, yO+100+(16*bk), tempPos[bk,0]);

						if(!is_undefined(global.party[bk]))
						{
							if(bi = global.party[bk].tempPos[0] && bj = global.party[bk].tempPos[1])
							{
								draw_sprite(global.party[bk].portrait, 0, xO + (SCREENW/2) + ((-2+bi)*64)+32, yO + (SCREENH/2) + ((-2+bj)*64)+32);
							}
						}
					}
				}
			}
		}
		else if(menuLevel == 13)
		{
			for(a=0; a < maxItems; a++)
			{
				draw_text(xO + 64, yO + 80 + a*32, "File " + string(a+saveScroll));
			}
			loadPreview(menuSelect[menuLevel,0]);
			drawFilePreview(xO + 256, yO + 64);
			if(saveMenu == 1)
			{
				draw_text_ext(xO + 64, yO+96+24+(24*20), "Overwrite file "  + string(menuSelect[menuLevel,0]) + "?", 16, SCREENW-128);
				draw_text_ext(xO + 64, yO+96+48+(24*20), "No", 16, SCREENW-128);
				draw_text_ext(xO + 128, yO+96+48+(24*20), "Yes", 16, SCREENW-128);
				if(saveYN == 0)
				{
					draw_sprite(spr_cursor, 0, xO + 40, yO+96+48+(24*20));
				}
				else draw_sprite(spr_cursor, 0, xO + 104, yO+96+48+(24*20));
			}
			else if(saveMenu == 2)
			{
				draw_text_ext(xO + 64, yO+96+24+(24*20), "Game saved!", 16, SCREENW-128);				
			}
		}
		if(menuLevel == 14)
		{
			draw_text(xO + 64, yO + 64, "Adjust Volume");
			draw_text(xO + 80, yO + 96, "Sound Effects");
			draw_text(xO + 80, yO + 112, "< " + string(round(global.sfxGain*10)) + " >");
			draw_text(xO + 80, yO + 144, "Music");
			draw_text(xO + 80, yO + 160, "< " + string(round(global.musicGain*10)) + " >");
			
			draw_text(xO + 64, yO + 192, "Quit to Title Screen");
			draw_text(xO + 64, yO + 224, "Quit Game");
			
			if(menuSelect[menuLevel, 0] < 2) draw_sprite(spr_cursor, 0, xO + 32, yO + (menuSelect[menuLevel, 0]*48) + 96);
			else draw_sprite(spr_cursor, 0, xO + 32, yO + (menuSelect[menuLevel, 0]*32) + 128);
		}
	}
}