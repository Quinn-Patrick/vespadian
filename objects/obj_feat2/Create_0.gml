/// @description Insert description here
// You can write your code in this editor
featNum = 2;
character = 0;

fGridX = 0;
fGridY = 2;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 1;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = 1;
scrBoost = 2;
available = false;

