/// @description Insert description here
// You can write your code in this editor
featNum = 5;
character = 0;

fGridX = 3;
fGridY = 6;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 3;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = -1;
scrBoost = 1;
available = false;