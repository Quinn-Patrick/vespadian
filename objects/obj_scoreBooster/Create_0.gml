/// @description Insert description here
// You can write your code in this editor
xO = obj_pauseManager.xO;
yO = obj_pauseManager.yO;
depth = -99999999999;
initialized = false;

intText[0] = 0;

intText = loadMisc(1, 2, 10);

scoreChoose = 0;
character = 0;
boostAmount = 0;
scoreOps = ds_list_create();
obj_pauseManager.featMode = 1;