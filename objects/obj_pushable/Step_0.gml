/// @description Insert description here
// You can write your code in this editor
if(global.events[xStorageLocation] == 0)global.events[xStorageLocation] = initx;
if(global.events[yStorageLocation] == 0)global.events[yStorageLocation] = inity;

if(initialized > 2){
	global.map[gridx, gridy] = worldLayer;
}

if(initialized == 0){
	if(instance_exists(obj_blockReset)) ds_list_add(obj_blockReset.blocks, self);
	gridx = global.events[xStorageLocation];
	gridy = global.events[yStorageLocation];
	
	x = gridx*32;
	y = gridy*32;
}
if(initialized == 1){
	storeMapData = global.map[gridx, gridy];
}

initialized++;
global.events[xStorageLocation] = gridx;
global.events[yStorageLocation] = gridy;
moving = false;
refreshTime++;
if(gridx*32 > x){
	x+=velo;
	moving = true;
	global.control = false;
	settled = false;
}
if(gridx*32 < x){
	x-=velo;
	moving = true;
	global.control = false;
	settled = false;
}

if(gridy*32 > y){
	y+=velo;
	moving = true;
	global.control = false;
	settled = false;
}
if(gridy*32 < y){
	y-=velo;
	moving = true;
	global.control = false;
	settled = false;
}

if(gridx*32 == x && gridy*32 == y){
	if(!settled){
		refreshTime = 0;
		global.control = true;
	}
	settled = true;
	
}

lastx = gridx;
lasty = gridy;



if(global.ovx == gridx - 1 && global.ovy == gridy && obj_player.worldLayer == self.worldLayer){
	if(key(1) && global.control && global.stopped && refreshTime > refreshLimit){
		gridx++;
		refreshTime = 0;
		if(global.map[gridx, gridy]==0 || global.solids[gridx, gridy]==worldLayer
			|| global.map[gridx, gridy]==worldLayer)
		{
		    gridx--;
		}else{
			global.map[gridx-1, gridy] = storeMapData;
			storeMapData = global.map[gridx, gridy];
		}
	}
}
if(global.ovx == gridx + 1 && global.ovy == gridy && obj_player.worldLayer == self.worldLayer){
	if(key(3) && global.control && global.stopped && refreshTime > refreshLimit){
		gridx--;
		refreshTime = 0;
		if(global.map[gridx, gridy]==0 || global.solids[gridx, gridy]==worldLayer
			|| global.map[gridx, gridy]==worldLayer)
		{
		    gridx++;
		}else{
			global.map[gridx+1, gridy] = storeMapData;
			storeMapData = global.map[gridx, gridy];
		}
	}
}
if(global.ovy == gridy - 1 && global.ovx == gridx && obj_player.worldLayer == self.worldLayer){
	if(key(7) && global.control && global.stopped && refreshTime > refreshLimit){
		gridy++;
		refreshTime = 0;
		if(global.map[gridx, gridy]==0 || global.solids[gridx, gridy]==worldLayer
			|| global.map[gridx, gridy]==worldLayer)
		{
		    gridy--;
		}else{
			global.map[gridx, gridy-1] = storeMapData;
			storeMapData = global.map[gridx, gridy];
		}
	}
}
if(global.ovy == gridy + 1 && global.ovx == gridx && obj_player.worldLayer == self.worldLayer){
	if(key(5) && global.control && global.stopped && refreshTime > refreshLimit){
		gridy--;
		refreshTime = 0;
		if(global.map[gridx, gridy]==0 || global.solids[gridx, gridy]==worldLayer
			|| global.map[gridx, gridy]==worldLayer)
		{
		    gridy++;
		}else{
			global.map[gridx, gridy+1] = storeMapData;
			storeMapData = global.map[gridx, gridy];
		}
	}
}