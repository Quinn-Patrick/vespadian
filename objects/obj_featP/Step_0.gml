/// @description Insert description here
// You can write your code in this editor
x = obj_pauseManager.xO + ((obj_pauseManager.featX[character]*64) + 512) + (fGridX*-64);
y = obj_pauseManager.yO + ((obj_pauseManager.featY[character]*64) + 384) - (fGridY*64);
//depth = (-1000-fGridY);

if(obj_pauseManager.featX[character] = fGridX && obj_pauseManager.featY[character] = fGridY && obj_pauseManager.featMode == 0)
{
	if(key(9))
	{
		//storeChar = character;
		if(!global.feats[featNum])
		{
			for(bd = 0; bd < 5; bd++)
			{
				if(prereq[bd] != -1)
				{
					if(global.feats[prereq[bd]])available = true;
				}
			}
			if(prereq[0] == -1 && prereq[1] == -1 && prereq[2] == -1 && prereq[3] == -1 && prereq[4] == -1) available = true;
			if(available)
			{
				/*if(global.stats[character, 21] > 0)
				{
					sound(snd_explosion);
					sound(snd_gainFeat);
					global.stats[character, 21]--;
					gainFeat(character, featNum, scr, scrBoost);
					available = false;
					character = storeChar;
				}*/
			}
		}
	}
}

if(!global.feats[featNum])
{
	for(bd = 0; bd < 5; bd++)
	{
		if(prereq[bd] != -1)
		{
			if(global.feats[prereq[bd]])available = true;
		}
	}
	if(prereq[0] == -1 && prereq[1] == -1 && prereq[2] == -1 && prereq[3] == -1 && prereq[4] == -1) available = true;
}