/// @description Insert description here
// You can write your code in this editor
roomTime++;
depth = baseDepth;
if(global.paused == 0)
{
	miniMenuList = ds_list_create();
	availEqList = ds_list_create();
	if(global.control)
	{
		if(key(10)){
			sound(snd_menu);
			global.paused = 1;
		}
	}
}

if(global.paused != 0)
{
	global.control = false;
}

blinkSwitcher *= -1;

if(saveMenu == 2)
{
	saveConfTime -= 1;
	if(saveConfTime <= 0)
	{
		saveConfTime = 60;
		saveMenu = 0;
	}
}