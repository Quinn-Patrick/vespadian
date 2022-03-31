function worldMapCol() {
	if(global.worldx > 0 && global.worldx < 127 && global.worldy > 0 && global.worldy < 127){
		if(global.vehicle == 0){
			return((obj_worldMapReader.worldMap[global.worldx, global.worldy] == 9983
			|| obj_worldMapReader.worldMap[global.worldx, global.worldy] == 8336128
			|| obj_worldMapReader.worldMap[global.worldx, global.worldy] == 65535
			|| obj_worldMapReader.worldMap[global.worldx, global.worldy] == 13096960  || onCoast())
			&& !(global.worldx == global.shipx && global.worldy == global.shipy));
		}else if(global.vehicle == 1){
			return(obj_worldMapReader.worldMap[global.worldx, global.worldy] == 65280
			|| obj_worldMapReader.worldMap[global.worldx, global.worldy] == 8336128
			|| isWalkableTerrain(global.worldx, global.worldy))
		
		}
	}


}
