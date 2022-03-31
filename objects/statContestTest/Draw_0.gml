/// @description Insert description here
// You can write your code in this editor
draw_text(64,32,string(offStat) + ", " + string(defStat) + ", " + string(offMod) + ", " + string(defMod));

draw_text(64,64,string((defWins/ds_list_size(tests))*100) + "%");

for(i = 0; i < ds_list_size(tests); i++)
{
	draw_text(128, 64 + (i*16), tests[| i]);
}