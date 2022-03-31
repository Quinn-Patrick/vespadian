function shore(argument0, argument1, argument2, argument3, argument4) {
	mapArray = argument0;
	mapx = argument1;
	mapy = argument2;
	drawX = argument3;
	drawY = argument4;

	if(mapArray[mapx-1, mapy-1] == 9983 || mapArray[mapx-1, mapy-1] == 65535) draw_sprite(spr_shoreNW, 0, drawX, drawY);
	if(mapArray[mapx, mapy-1] == 9983 || mapArray[mapx, mapy-1] == 65535) draw_sprite(spr_shoreN, 0, drawX, drawY);
	if(mapArray[mapx+1, mapy-1] == 9983 || mapArray[mapx+1, mapy-1] == 65535) draw_sprite(spr_shoreNE, 0, drawX, drawY);
	if(mapArray[mapx+1, mapy] == 9983 || mapArray[mapx+1, mapy] == 65535) draw_sprite(spr_shoreE, 0, drawX, drawY);
	if(mapArray[mapx+1, mapy+1] == 9983 || mapArray[mapx+1, mapy+1] == 65535) draw_sprite(spr_shoreSE, 0, drawX, drawY);
	if(mapArray[mapx, mapy+1] == 9983 || mapArray[mapx, mapy+1] == 65535) draw_sprite(spr_shoreS, 0, drawX, drawY);
	if(mapArray[mapx-1, mapy+1] == 9983 || mapArray[mapx-1, mapy+1] == 65535) draw_sprite(spr_shoreSW, 0, drawX, drawY);
	if(mapArray[mapx-1, mapy] == 9983 || mapArray[mapx-1, mapy] == 65535) draw_sprite(spr_shoreW, 0, drawX, drawY);


}
