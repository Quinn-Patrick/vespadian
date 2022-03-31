/// @description Insert description here
// You can write your code in this editor
featNum = 120;
character = 1;

fGridX = -5;
fGridY = -4;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 114;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = -3;
scrBoost = 1;
available = false;