/// @description Insert description here
// You can write your code in this editor

tick++
if(tick % 30 == 0){
	animator++;
}



if(!initialized)
{
	
	if(global.collisionMap != "")
	{
		grid = readMap(global.collisionMap);
		for(m=0;m<ds_grid_width(grid); m+=1)
		{
			hello = ds_grid_width(grid);
		    for(n=0;n<ds_grid_height(grid);n+=1)
		    {
				hello = ds_grid_height(grid);
		        worldMap[m,n] = ds_grid_get(grid,m,n);
		        //global.solids[m,n]=0; //array of solid objects on the map, all coordinates don't contain solid object by default
		    }
		}
		ds_grid_destroy(grid);
		initialized = true;
	}
	//load the encounter zones
	if(global.collisionMap != "")
	{
		initPhase = 1;
		if(room == rm_worldMap1)grid = readMap("files/maps/mapZone1Encounters.bmp");
		else if(room == rm_worldMap3)grid = readMap("files/maps/mapZone3Encounters.bmp");
		else if(room == rm_worldMap4)grid = readMap("files/maps/mapZone4Encounters.bmp");
		else if(room == rm_worldMap5)grid = readMap("files/maps/mapZone5Encounters.bmp");
		else if(room == rm_worldMap2)grid = readMap("files/maps/mapZone2Encounters.bmp");
		else if(room == rm_worldMap6)grid = readMap("files/maps/mapZone6Encounters.bmp");
		for(m=0;m<ds_grid_width(grid); m+=1)
		{
			hello = ds_grid_width(grid);
		    for(n=0;n<ds_grid_height(grid);n+=1)
		    {
				hello = ds_grid_height(grid);
		        encounterZones[m,n] = ds_grid_get(grid,m,n);
		        //global.solids[m,n]=0; //array of solid objects on the map, all coordinates don't contain solid object by default
		    }
		}
		ds_grid_destroy(grid);
		initialized = true;
		sound(snd_enterWorldMap);
	}
	currentZone = encounterZones[global.worldx, global.worldy];
	encFile = "";
	if(currentZone > -1){
		if(!is_undefined(ds_map_find_value(encounterTable, currentZone))){
			encFile  = "encounters/overworldEncounters"+string(ds_map_find_value(encounterTable, currentZone)) + ".txt";
		}
		else encFile = "";
	}
	encInit(encFile);
	
}
if(global.worldx >= 0 && global.worldx <= 127 && global.worldy >= 0 && global.worldy <= 127){
	if(worldMap[global.worldx, global.worldy] == 2522880 || worldMap[global.worldx, global.worldy] == 1792768) global.battleBackground = bg_woods;
	else if(worldMap[global.worldx, global.worldy] == 9983 || worldMap[global.worldx, global.worldy] == 13096960 || global.vehicle == 1) global.battleBackground = bg_ocean;
	else if(worldMap[global.worldx, global.worldy] == 13199872)global.battleBackground = bg_desert;
	else if(worldMap[global.worldx, global.worldy] == 16777215)global.battleBackground = bg_tundra;
	else global.battleBackground = bg_grassyField;
}