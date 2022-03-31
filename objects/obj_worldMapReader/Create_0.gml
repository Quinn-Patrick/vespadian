for(i = 0; i < room_height/32; i++){
	for(j = 0; j < room_width/32; j++){
		global.map[j,i] = 65536;
		global.solids[j,i] = 65536;
	}
}



worldWidth = 512;
worldHeight = 512;
worldMap[worldWidth,worldHeight] = 0;
encounterZones[worldWidth,worldHeight] = 0;
currentZone = -1;

ds_list_clear(global.landmarkList);

tick = 0;
animator = 0;

tileOffsetX = 0;
tileOffsetY = 0;
he=24;
wi=32;
initPhase = 0;
initialized = false; //due to execution order, we must wait 'til the step event to do some stuff. This ensures that we don't do it more than once.

encounterTable = ds_map_create();

ds_map_add(encounterTable, 38143, 0);

ds_map_add(encounterTable, 9983, 1); //low level water encounters

ds_map_add(encounterTable, 5046016, 0);
ds_map_add(encounterTable, 65535, 0);
ds_map_add(encounterTable, 11992832, 0);
ds_map_add(encounterTable, 16744319, 0);
ds_map_add(encounterTable, 16757375, 0);
ds_map_add(encounterTable, 16766976, 0);
ds_map_add(encounterTable, 16711680, 0);
ds_map_add(encounterTable, 8323072, 0);
ds_map_add(encounterTable, 10878847, 2);
ds_map_add(encounterTable, 16711900, 3);
ds_map_add(encounterTable, 8374783, 2);
ds_map_add(encounterTable, 8323182, 3);

ds_map_add(encounterTable, 8339291, 5);
ds_map_add(encounterTable, 8011110, 3);

ds_map_add(encounterTable, 7814007, 6); //zone 3 south plains

ds_map_add(encounterTable, 5711244, 7); //zone 3 all desert tiles

ds_map_add(encounterTable, 5711224, 8); //zone 3 all forest tiles

ds_map_add(encounterTable, 5711264, 9); //zone 3 all snow tiles

ds_map_add(encounterTable, 5711204, 10); //zone 2 grass tiles

ds_map_add(encounterTable, 7816567, 11); //zone 2 forest tiles

ds_map_add(encounterTable, 5711184, 12); //zone 2 desert tiles

ds_map_add(encounterTable, 5731684, 13); //high level water encounters

ds_map_add(encounterTable, 11901796, 14); //zone 5 encounters

ds_map_add(encounterTable, 7821687, 0);
ds_map_add(encounterTable, 11163173, 0);
ds_map_add(encounterTable, 11170893, 0);
ds_map_add(encounterTable, 16741453, 0);
ds_map_add(encounterTable, 11145293, 0);
ds_map_add(encounterTable, 11163243, 0);
ds_map_add(encounterTable, 11163213, 0);
ds_map_add(encounterTable, 16764749, 0);
ds_map_add(encounterTable, 16711790, 3);
ds_map_add(encounterTable, 8142405, 3);

transitionTimer = 0;
transitionTimerLimit = 30;
inTransition = true;