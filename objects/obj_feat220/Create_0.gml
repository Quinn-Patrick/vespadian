/// @description Insert description here
// You can write your code in this editor
featNum = 220;
character = 2;

fGridX = 0;
fGridY = 4;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 202;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = -4;
scrBoost = 1;
available = false;