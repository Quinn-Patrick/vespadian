/// @description Insert description here
// You can write your code in this editor

draw_sprite(spr_promptBox, 0, 450, 672);
draw_text(466, 688, "Done");
draw_text(466, 704, "Randomize");
draw_text(466, 720, "Back");

if(focus == numberOfCharacters){
	draw_sprite(spr_cursor, 0, 434, 688 + (16*menuSelect));
}