/// @description Insert description here
// You can write your code in this editor
featNum = 215;
character = 2;

fGridX = 8;
fGridY = 1;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 214;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = -1;
scrBoost = 1;
available = false;