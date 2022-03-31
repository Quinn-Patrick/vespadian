/// @description Insert description here
// You can write your code in this editor
featNum = 303;
character = 3;

fGridX = 2;
fGridY = 2;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 302;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = -1;
scrBoost = 1;
available = false;