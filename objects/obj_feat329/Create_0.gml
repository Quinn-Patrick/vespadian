/// @description Insert description here
// You can write your code in this editor
featNum = 329;
character = 3;

fGridX = -9;
fGridY = 8;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 327;
prereq[1] = 328;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = 8;
scrBoost = 2;
available = false;