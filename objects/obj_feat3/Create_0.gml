/// @description Insert description here
// You can write your code in this editor
featNum = 3;
character = 0;

fGridX = 2;
fGridY = 4;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 2;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = -4;
scrBoost = 1;
available = false;