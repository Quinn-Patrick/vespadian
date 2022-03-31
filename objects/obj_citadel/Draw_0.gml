/// @description Insert description here
// You can write your code in this editor
subimg = ((animTimer/endTime)*(sprite_get_number(spr_citadel)-1));
draw_sprite_ext(sprite_index, subimg, x, y, 1, 1, 0, c_white, 1);

image_angle += 2;