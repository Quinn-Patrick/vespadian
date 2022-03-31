function act_instantMove(argument0, argument1, argument2) {
	actorId = argument0;
	setX = argument1;
	setY = argument2;

	actors[| actorId].gridX = setX;
	actors[| actorId].gridY = setY;

	actors[| actorId].x = setX*32+16;
	actors[| actorId].y = setY*32+16;


	return true;


}
