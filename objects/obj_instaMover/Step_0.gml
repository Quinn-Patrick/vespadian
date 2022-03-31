/// @description Insert description here
// You can write your code in this editor
clock++;

actor.velo = spd;
actor.image_speed = 2/(32*(1/spd));

actor.dir = direct;
if(clock == 1){
	switch(direct){
		case(0): actor.gridY -= dist; break;
		case(1): actor.gridX -= dist; break;
		case(2): actor.gridX += dist; break;
		case(3): actor.gridY += dist; break;
	}
}

if(actor.x == actor.gridX*32+16 && actor.y == actor.gridY*32+16){
	actor.image_speed = 0;
	actor.velo = 0;
	actor.image_index = 0;
	instance_destroy(self);
}