/// @description Insert description here
// You can write your code in this editor
featNum = 125;
character = 1;

fGridX = -9;
fGridY = -6;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 124;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = -5;
scrBoost = 2;
available = false;