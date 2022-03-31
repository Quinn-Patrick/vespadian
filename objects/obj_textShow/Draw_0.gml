/// @description Insert description here
// You can write your code in this editor

draw_sprite(menuBox1, 0, __view_get( e__VW.XView, 0 )+96, __view_get( e__VW.YView, 0 )+640)
draw_text_ext(__view_get( e__VW.XView, 0 )+112, __view_get( e__VW.YView, 0 )+656, string_hash_to_newline(show), 16, 800);
global.textTime++;

if(global.control) instance_destroy(self);
