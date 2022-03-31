/// @description Insert description here
// You can write your code in this editor
featNum = 1;
character = 0;

fGridX = 0;
fGridY = 0;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = 0;
scrBoost = 2;
available = false;