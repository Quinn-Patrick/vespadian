/// @description Insert description here
// You can write your code in this editor
featNum = 121;
character = 1;

fGridX = -7;
fGridY = -4;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 120;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = -4;
scrBoost = 1;
available = false;