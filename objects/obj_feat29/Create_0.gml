/// @description Insert description here
// You can write your code in this editor
featNum = 29;
character = 0;

fGridX = 2
fGridY = 16

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 25


featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = 8;
scrBoost = 2;
available = false;