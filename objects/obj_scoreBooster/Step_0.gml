/// @description Insert description here
// You can write your code in this editor
if(!initialized)
{
	
	
	if(scoreSet == -1)
	{
		ds_list_add(scoreOps, 0);
		ds_list_add(scoreOps, 1);
	}
	
	else if(scoreSet == -2)
	{
		ds_list_add(scoreOps, 2);
		ds_list_add(scoreOps, 3);
	}
	else if(scoreSet == -3)
	{
		ds_list_add(scoreOps, 4);
		ds_list_add(scoreOps, 5);
	}
	else if(scoreSet == -4)
	{
		ds_list_add(scoreOps, 6);
		ds_list_add(scoreOps, 7);
	}
	else if(scoreSet == -5)
	{
		ds_list_add(scoreOps, 0);
		ds_list_add(scoreOps, 1);
		ds_list_add(scoreOps, 2);
		ds_list_add(scoreOps, 3);
		ds_list_add(scoreOps, 4);
		ds_list_add(scoreOps, 5);
		ds_list_add(scoreOps, 6);
		ds_list_add(scoreOps, 7);
	}
	maxChoose = ds_list_size(scoreOps)-1;
	initialized = true;
}

if(key(5))
{
	sound(snd_select);
	scoreChoose--;
	if(scoreChoose < 0)
	{
		scoreChoose = maxChoose;
	}
}
if(key(7))
{
	sound(snd_select);
	scoreChoose++;
	if(scoreChoose > maxChoose)
	{
		scoreChoose = 0;
	}
}

if(key(9))
{
	sound(snd_select);
	boostScore(character, scoreOps[| scoreChoose], boostAmount);
	obj_pauseManager.featMode = 0;
	ds_list_destroy(scoreOps);
	instance_destroy();
}