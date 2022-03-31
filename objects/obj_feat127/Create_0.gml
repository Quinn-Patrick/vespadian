/// @description Insert description here
// You can write your code in this editor
featNum = 127;
character = 1;

fGridX = -13;
fGridY = -5;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 126;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = -1;
scrBoost = 1;
available = false;