/// @description Insert description here
// You can write your code in this editor
featNum = 118;
character = 1;

fGridX = -3;
fGridY = -8;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 116;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = -2;
scrBoost = 1;
available = false;