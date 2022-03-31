/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_text_ext(x+8, y+8, promptText, 16, 128);

draw_text(x+224, y+8, "Yes");
draw_text(x+224, y+24, "No");

if(selection == 1) draw_sprite(spr_cursor, 0, x+200, y+8);
if(selection == 0) draw_sprite(spr_cursor, 0, x+200, y+24);