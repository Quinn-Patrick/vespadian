/// @description Insert description here
// You can write your code in this editor
n = obj_pauseManager.menuSelect[13,0];
if(fileStore[n,0] == 0)
{
	draw_text(xO + 256, yO + 64, "No data.");
}
else
{
	for(i = 1; i < 5; i++)
	{
		if(fileStore[n,i] != -1)
		{
			port = partyP(fileStore[n,i])
			draw_sprite_ext(port, 0, xO+256, yO+64+(176*(i-1)), 128/sprite_get_width(port), 128/sprite_get_height(port), 0, c_white, 1);
		}
	}
}