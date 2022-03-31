/// @description Insert description here
// You can write your code in this editor
featNum = 324;
character = 3;

fGridX = -3;
fGridY = 6;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 316;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = -2;
scrBoost = 1;
available = false;