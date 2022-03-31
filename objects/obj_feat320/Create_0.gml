/// @description Insert description here
// You can write your code in this editor
featNum = 320;
character = 3;

fGridX = 3;
fGridY = 7;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 319;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = -4;
scrBoost = 1;
available = false;