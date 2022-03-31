/// @description Insert description here
// You can write your code in this editor

for(i = 0; i < numberOfCharacters; i++){
	characterCreators[| i].focus = (focus == i);
}

if(focus == numberOfCharacters){
	if(key(5)){
		sound(snd_select);
		menuSelect--;
		if(menuSelect < 0){
			menuSelect = 0;
			focus = numberOfCharacters-1;
			characterCreators[| focus].select = numberOfCharacters;
		}
	}
	if(key(7)){
		sound(snd_select);
		menuSelect++;
		if(menuSelect > 2){
			menuSelect = 0;
			focus = 0;
			characterCreators[| focus].select = 0;
		}
	}
	if(key(9)){
		if(room == rm_partyCreator)
		{
			sound(snd_select);
			switch(menuSelect){
				case 0: 
					for(p = 0; p < 4; p++){
						global.party[p] = initializeCharacter(characterCreators[| p]);
						global.party[p].formPositionY = p;
						global.party[p].uniqueIdentifier = global.identifierIncrement;
						global.identifierIncrement++;
					}
					ini_open("settings.ini");
					ini_write_real("universal", "increment", global.identifierIncrement);
					ini_close();
					for(p = 0; p < 4; p++){
						levelUp(global.party[p], undefined);
						res(global.party[p]);
					}
					global.hasMoved = false;
					global.ovx = 25;
					global.ovy = 78;
					global.layerStore = 1;
					room_goto(rm_opening1);
					break;
				case 1: 
					for(i = 0; i < 4; i++){
						randomizeCharacter(characterCreators[| i]);
					}
					break;
				case 2: game_restart(); break;
			}
		}
		else if(room == rm_partyEditor)
		{
			obj_partyEditor.menuLevel = 0;
			obj_partyEditor.cursorScroll = 0;
			obj_partyEditor.menuScroll = 0;
			
			storeCharacter = global.party[obj_partyEditor.partySlot];
			global.party[obj_partyEditor.partySlot] = initializeCharacter(characterCreators[| 0]);
			
			
			global.party[obj_partyEditor.partySlot].formPositionY = storeCharacter.formPositionY;
			global.party[obj_partyEditor.partySlot].formPositionX = storeCharacter.formPositionX;
			global.party[obj_partyEditor.partySlot].uniqueIdentifier = global.identifierIncrement;
			ini_open("settings.ini");
			ini_write_real("universal", "increment", global.identifierIncrement);
			ini_close();
			
			levelUp(global.party[obj_partyEditor.partySlot], undefined);
			res(global.party[obj_partyEditor.partySlot]);
			
			global.identifierIncrement++;
			ds_list_add(global.characterBench, storeCharacter);
			
			instance_destroy(characterCreators[| 0]);
			
			instance_destroy();
		}
	}
}