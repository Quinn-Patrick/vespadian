/// @description Insert description here
// You can write your code in this editor
draw_self();
depth = -110000-fGridY;
if(obj_pauseManager.featX[character] = fGridX && obj_pauseManager.featY[character] = fGridY && obj_pauseManager.featMode == 0)
{
	
	draw_text_ext(obj_pauseManager.xO + 64, obj_pauseManager.yO+608, featName, 16, 1024-128);
	draw_text_ext(obj_pauseManager.xO + 64, obj_pauseManager.yO+640, featDes, 16, 1024-128);
	
}

if(available) sprite_index = spr_featTile;
else sprite_index = spr_featTileGray;

if(global.feats[featNum])
{
	draw_sprite(spr_check, 0, x, y);
}