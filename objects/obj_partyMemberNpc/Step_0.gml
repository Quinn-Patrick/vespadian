/// @description Insert description here
// You can write your code in this editor
if(npcNumber >= ds_list_size(global.characterBench)) instance_destroy();
if(is_undefined(correspondingCharacter))correspondingCharacter = obj_partyMemberNpcManager.charactersAsNPCs[npcNumber];
if(x < gridx*32){
	image_speed = 2/(32*(1/velo));
	if(x == gridx*32-32) image_index = 1;
	dir = 2;
	x += velo;
}else if(x > gridx*32){
	if(x == gridx*32+32) image_index = 1;
	image_speed = 2/(32*(1/velo));
	dir = 1;
	x -= velo;
}else if(y < gridy*32){
	if(y == gridy*32-32) image_index = 1;
	image_speed = 2/(32*(1/velo));
	dir = 3;
	y += velo;
}else if(y > gridy*32){
	if(y == gridy*32+32) image_index = 1;
	image_speed = 2/(32*(1/velo));
	dir = 0;
	y -= velo;
}else{
	image_index = 0;
	image_speed = 0;
}

if(x == gridx*32 && y == gridy*32 && !global.inDial){
	if(movementType == 1){
		if(irandom_range(0,122) > 120){
			walkDir = irandom_range(0,4);
			dir = walkDir;
			if(walkDir == 0){
				gridy -= 1;
				if(global.map[gridx, gridy] == 0 || global.map[gridx, gridy] == worldLayer || global.solids[gridx, gridy] == worldLayer || (global.ovx == gridx && global.ovy == gridy)){
					gridy += 1;
				}
			}else if(walkDir == 1){
				gridx -= 1;
				if(global.map[gridx, gridy] == 0 || global.map[gridx, gridy] == worldLayer || global.solids[gridx, gridy] == worldLayer || (global.ovx == gridx && global.ovy == gridy)){
					gridx += 1;
				}
			}else if(walkDir == 2){
				gridx += 1;
				if(global.map[gridx, gridy] == 0 || global.map[gridx, gridy] == worldLayer || global.solids[gridx, gridy] == worldLayer || (global.ovx == gridx && global.ovy == gridy)){
					gridx -= 1;
				}
			}else if(walkDir == 3){
				gridy += 1;
				if(global.map[gridx, gridy] == 0 || global.map[gridx, gridy] == worldLayer || global.solids[gridx, gridy] == worldLayer || (global.ovx == gridx && global.ovy == gridy)){
					gridy -= 1;
				}
			}
		}
	}
}