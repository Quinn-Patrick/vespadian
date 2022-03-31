/// @description Insert description here
// You can write your code in this editor
featNum = 7;
character = 0;

fGridX = 4;
fGridY = 8;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 5;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = -1;
scrBoost = 1;
available = false;