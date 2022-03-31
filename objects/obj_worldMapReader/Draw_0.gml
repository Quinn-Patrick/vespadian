if(global.worldx >= 0 && global.worldx <= 127 && global.worldy >= 0 && global.worldy <= 127){
	oldZone = currentZone;
	currentZone = encounterZones[global.worldx, global.worldy];
	if(currentZone != oldZone){
		if(currentZone > -1){
			if(!is_undefined(ds_map_find_value(encounterTable, currentZone)))encFile = "encounters/overworldEncounters"+string(ds_map_find_value(encounterTable, currentZone)) + ".txt";
			else encFile = "";
		}
		else encFile = "";
		encInit(encFile);
	}
}
//draw_text(100,100,currentZone);


/*
for(i = 0; i < room_height/32; i++){
	for(j = 0; j < room_width/32; j++){
		draw_text(j*32, i*32, global.map[j,i]);
	}
}
*/

