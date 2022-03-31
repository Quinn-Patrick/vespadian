//draw_sprite(spr_playerPlaceholder, dir, x, y);
//draw_text(global.ovx*32,global.ovy*32,global.roomFlags[0]);

if(dir == 0)
{
	if(!still)draw_sprite(backSpr, animFrame, x+16, y+16);
	else draw_sprite(backSpr, 0, x+16, y+16);
}
else if(dir == 1)
{
	if(!still)draw_sprite_ext(sideSpr, animFrame % 2, x+16, y+16, -1,1,0,c_white,1);
	else draw_sprite_ext(sideSpr, 0, x+16, y+16, -1,1,0,c_white,1);
}
else if(dir == 2)
{
	if(!still)draw_sprite(frontSpr, animFrame, x+16, y+16);
	else draw_sprite(frontSpr, 0, x+16, y+16);
}
else if(dir == 3)
{
	if(!still)draw_sprite_ext(sideSpr, animFrame % 2, x+16, y+16, 1,1,0,c_white,1);
	else draw_sprite_ext(sideSpr, 0, x+16, y+16, 1,1,0,c_white,1);
}
