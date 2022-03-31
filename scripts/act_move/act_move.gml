function act_move(argument0, argument1, argument2, argument3) {
	actId = argument0;
	direct = argument1;
	spd = argument2;
	dist = argument3;

	//dest = 0;

	actors[| actId].velo = spd;
	actors[| actId].image_speed = 2/(32*(1/spd));

	actors[| actId].dir = direct;
	if(clock == 1){
		switch(direct){
			case(0): actors[| actId].gridY -= dist; break;
			case(1): actors[| actId].gridX -= dist; break;
			case(2): actors[| actId].gridX += dist; break;
			case(3): actors[| actId].gridY += dist; break;
		}
	}

	if(actors[| actId].x == actors[| actId].gridX*32+16 && actors[| actId].y == actors[| actId].gridY*32+16){
		actors[| actId].image_speed = 0;
		actors[| actId].velo = 0;
		actors[| actId].image_index = 0;
		return true;
	}
	else return false;


}
