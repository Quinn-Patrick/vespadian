/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_pauseBoxFull, 0, 0, 384);

draw_text(32, 32, keyboard_lastchar);

draw_text(64, 384 + 48, output);
for(i = 0; i < ds_list_size(keyboard); i++){
	for(j = 0; j < ds_list_size(keyboard[| i]); j++){
		draw_text(64 + (64*j), 480 + (48*i), keyboard[| i][| j]);
	}
}

draw_sprite(spr_selectionBox, 0, 60 + (64*selectX), 476 + (48*selectY));