/// @description Insert description here
// You can write your code in this editor
featNum = 10;
character = 0;

fGridX = -4;
fGridY = 8;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 6;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = -2;
scrBoost = 1;
available = false;