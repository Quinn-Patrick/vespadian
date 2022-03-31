/// @description Insert description here
// You can write your code in this editor
xTile = floor(x/32)
yTile = floor(y/32)

for(i = 0; i < floor(sprite_width/32); i++){
	for(j = 0; j < floor(sprite_height/32); j++){
		global.map[xTile+i,yTile+j] = wallLayer;
	}
}

instance_destroy(self);