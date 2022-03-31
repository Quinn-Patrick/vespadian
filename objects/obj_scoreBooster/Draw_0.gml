/// @description Insert description here
// You can write your code in this editor
if(initialized)
{
	draw_text_ext(xO + 64, yO+640-96, intText[0], 16, 1024-128);
	hello = intText[0];

	for(i = 0; i < ds_list_size(scoreOps); i++)
	{
	
		draw_text_ext(xO + 64, yO+640-96 + ((i+1)*24), intText[scoreOps[| i]+1], 16, 1024-128);
	}

	draw_sprite(spr_cursor, 0, xO+40, yO+640-96 + ((scoreChoose+1)*24));
}