/// @description Insert description here
// You can write your code in this editor
featNum = 218;
character = 2;

fGridX = 10;
fGridY = 2;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 217;
prereq[1] = 215;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = -1;
scrBoost = 1;
available = false;