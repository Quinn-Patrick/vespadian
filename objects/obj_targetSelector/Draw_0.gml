/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_targetBox, 0, x-16, y-16);
for(i = 0; i < ds_list_size(global.playerTargets); i++){
	draw_text(x, y+(i*16), global.playerTargets[| i].name);
}
draw_sprite(spr_cursor, 0, x - 32, y + (global.playerTargetSelect*16));

currentTarget = global.playerTargets[| global.playerTargetSelect];

draw_sprite_ext(spr_targetRing, 0, currentTarget.x, currentTarget.y, 1, 1, ringRotation, c_white, 1);