/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_text_ext(x+8, y+8, promptText, 16, 128);

for(i = 0; i < ds_list_size(listItems); i++){
	draw_text(x+32, y+(32*(i+1))+4, listItems[| i].nam);
}


draw_sprite(spr_cursor, 0, x+8, y+(32*(selection+1))+4);