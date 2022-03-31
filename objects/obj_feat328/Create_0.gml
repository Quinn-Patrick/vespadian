/// @description Insert description here
// You can write your code in this editor
featNum = 328;
character = 3;

fGridX = -7;
fGridY = 9;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 326;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = -4;
scrBoost = 1;
available = false;