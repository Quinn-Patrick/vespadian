/// @description Insert description here
// You can write your code in this editor
for(j = -1; j < 2; j++){
	for(i = 0; i < global.numberOfClasses; i++){
		if(j == 0 && i == selection)draw_sprite(spriteArray[i], 0, x + (((i-selection)*128)) + (j*global.numberOfClasses*127) + offset, y);
		else draw_sprite_ext(spriteArray[i], 0, x + (((i-selection)*128)) + (j*global.numberOfClasses*127) + offset, y, 0.9, 0.9, 0, c_gray, 0.8);
	}
}

if(state == 0){
	draw_text_ext(x - (SCREENW/2)+128, y + 192, global.classDescriptions[selection], 16, SCREENW-256);
}

if(state == 1){
	draw_text_ext(x - (SCREENW/2)+128, y + 192, "Are you sure you would like to change " + characterSel.name + " to a " + getClassName(selection)
	+ "? You won't be able to change it again until they have gained at least ten levels as a " + getClassName(selection) + ".", 16, SCREENW-256);
	
	draw_text(x - (SCREENW/2)+128, y + 256, "No");
	draw_text(x - (SCREENW/2)+192, y + 256, "Yes");
	
	draw_sprite(spr_cursor, 0, x - (SCREENW/2)+(64*ynSelect) + 112, y + 256);
}