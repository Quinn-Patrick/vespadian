//draw_sprite(spr_playerPlaceholder, dir, x, y);
//draw_text(global.ovx*32,global.ovy*32,global.roomFlags[0]);
if(global.vehicle != 2 && global.airshipRoom == room){
	draw_sprite(spr_airshipSide, 0, global.airshipx*32+16, global.airshipy*32+16);
}

if(global.vehicle != 1 && global.shipRoom == room){
	draw_sprite(spr_shipSide, 0, global.shipx*32+16, global.shipy*32+16);
}

pettingFrameCounter++;

if(global.vehicle == 2) draw_sprite(spr_shadow, 0, x+16, y+16)

if(pettingFrameCounter > pettingSpeed){
	pettingFrame++;
	if(pettingFrame > 1) pettingFrame = 0;
	pettingFrameCounter = 0;
}

if(dir == 0)
{
	if(!still)draw_sprite(backSpr, animFrame, x+16, y+16 - global.airshipOffset + teleportOffset);
	else draw_sprite(backSpr, 0, x+16, y+16 - global.airshipOffset);
}
else if(dir == 1)
{
	if(!petting){
		if(!still)draw_sprite_ext(sideSpr, animFrame % 2, x+16, y+16 - global.airshipOffset + teleportOffset, -1,1,0,c_white,1);
		else draw_sprite_ext(sideSpr, 0, x+16, y+16 - global.airshipOffset + teleportOffset, -1,1,0,c_white,1);
	}else{
		draw_sprite_ext(spr_maryPetting, pettingFrame, x+16, y+16 - global.airshipOffset + teleportOffset, -1,1,0,c_white,1);
	}
}
else if(dir == 2)
{
	if(!still)draw_sprite(frontSpr, animFrame, x+16, y+16 - global.airshipOffset + teleportOffset);
	else draw_sprite(frontSpr, 0, x+16, y+16 - global.airshipOffset + teleportOffset);
}
else if(dir == 3)
{
	if(!petting){
		if(!still)draw_sprite_ext(sideSpr, animFrame % 2, x+16, y+16 - global.airshipOffset + teleportOffset, 1,1,0,c_white,1);
		else draw_sprite_ext(sideSpr, 0, x+16, y+16 - global.airshipOffset + teleportOffset, 1,1,0,c_white,1);
	}else{
		draw_sprite_ext(spr_maryPetting, pettingFrame, x+16, y+16 - global.airshipOffset + teleportOffset, 1,1,0,c_white,1);
	}
}




