//draw_sprite(spr_playerPlaceholder, dir, x, y);
//draw_text(global.ovx*32,global.ovy*32,global.roomFlags[0]);
pettingFrameCounter++;
if(pettingFrameCounter > pettingSpeed){
		pettingFrame++;
		if(pettingFrame > 3) pettingFrame = 0;
		pettingFrameCounter = 0;
}
if(forceMove == 0){
	if(dir == 0)
	{
		if(!still)draw_sprite(backSpr, animFrame, x+16, y+16);
		else draw_sprite(backSpr, 0, x+16, y+16);
	}
	else if(dir == 1)
	{
		if(!petting){
			if(!still)draw_sprite_ext(sideSpr, animFrame % 2, x+16, y+16, -1,1,0,c_white,1);
			else draw_sprite_ext(sideSpr, 0, x+16, y+16, -1,1,0,c_white,1);
		}else{
			draw_sprite_ext(spr_maryPetting, pettingFrame, x+16, y+16, -1,1,0,c_white,1);
		}
	}
	else if(dir == 2)
	{
		if(!still)draw_sprite(frontSpr, animFrame, x+16, y+16);
		else draw_sprite(frontSpr, 0, x+16, y+16);
	}
	else if(dir == 3)
	{
		if(!petting){
			if(!still)draw_sprite_ext(sideSpr, animFrame % 2, x+16, y+16, 1,1,0,c_white,1);
			else draw_sprite_ext(sideSpr, 0, x+16, y+16, 1,1,0,c_white,1);
		}else{
			draw_sprite_ext(spr_maryPetting, pettingFrame, x+16, y+16, 1,1,0,c_white,1);
		}
	}
}else{
	if(pettingFrame == 0)draw_sprite(frontSpr, 0, x+16, y+16);
	else if(pettingFrame == 1)draw_sprite_ext(sideSpr, 0, x+16, y+16, 1, 1, 0, c_white, 1);
	else if(pettingFrame == 3)draw_sprite_ext(sideSpr, 0, x+16, y+16, -1, 1, 0, c_white, 1);
	else if(pettingFrame == 2)draw_sprite(backSpr, 0, x+16, y+16);
}