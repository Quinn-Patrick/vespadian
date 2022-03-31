/// @description Insert description here
// You can write your code in this editor
if(mode == 0)
{
	
	if(introTime < 1921)introTime++;
	if(keyboard_check_pressed(vk_anykey) || key(0) || key(2) || key(4) || key(6) || key(8) || key(9) || key(10)) introTime = 1921;
	obj_staticTitle.visible = true;
	if(introTime >= 1920)draw_sprite(spr_cursor, 0, SCREENW/2-56, SCREENH/2 + (16*select));
	draw_set_halign(fa_center);
	
	if(introTime < 420){
		draw_sprite_ext(spr_blackScreen, 0, 0, 0, 1, 1, 0, c_white, 1);
		loadOpacity = 0;
		creditOpacity = introTime/420;
		
	}
	else if(introTime >= 420 && introTime < 540){
		draw_sprite_ext(spr_blackScreen, 0, 0, 0, 1, 1, 0, c_white, 1);
		loadOpacity = 0;
		creditOpacity = 1;
		
	}
	else if(introTime >= 540 && introTime < 960){
		
		loadOpacity = 0;
		creditOpacity = 1-((introTime-540)/420);
		
	}
	else if(introTime >= 960 && introTime < 1920){
		
		loadOpacity = (introTime-960)/960;
		creditOpacity = 0;
		
	}else{
		loadOpacity = 1;
		creditOpacity = 0;
	}
	
	draw_sprite_ext(spr_blackScreen, 0, 0, 0, 1, 1, 0, c_white, creditOpacity);
	
	draw_text_color(SCREENW/2, SCREENH/2, "A Game by Quinn Patrick", defaultTextColor, defaultTextColor, defaultTextColor, defaultTextColor, creditOpacity);
	
	draw_text_color(SCREENW/2, SCREENH/2, "New Game", defaultTextColor, defaultTextColor, defaultTextColor, defaultTextColor, (loadOpacity-0.75)*4);
	draw_text_color(SCREENW/2, SCREENH/2+16, "Load Game", defaultTextColor, defaultTextColor, defaultTextColor, defaultTextColor, (loadOpacity-0.75)*4);
	draw_set_halign(fa_left);
	obj_staticTitle.image_alpha = loadOpacity;
	
	//if(gamepad_is_connected(0) || gamepad_is_connected(1) || gamepad_is_connected(2) || gamepad_is_connected(3) || gamepad_is_connected(4))draw_text(SCREENW*0.75, SCREENH*0.75, "Gamepad Connected");
	//else draw_text(SCREENW*0.75, SCREENH*0.75, string(gamepad_get_device_count));
}
else if(mode == 1)
{
	draw_sprite_ext(spr_blackScreen, 0, 0, 0, 1, 1, 0, c_white, 1);
	obj_staticTitle.visible = false;
	loadPreview(fileSelect);
	drawFilePreview(256, 64);
	for(i = 0; i < 16; i++)
	{
		draw_sprite(spr_cursor, 0, 100-24, 100 + ((fileSelect-fileScroll)*16));
		draw_text(100, 100 +(i*16), "File " + string(i+fileScroll));
	}
}
else if(mode == 2){
	draw_sprite_ext(spr_blackScreen, 0, 0, 0, 1, 1, 0, c_white, fadeOutTimer/fadeOutTimeLimit);
}

