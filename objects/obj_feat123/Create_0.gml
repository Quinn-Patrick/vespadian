/// @description Insert description here
// You can write your code in this editor
featNum = 123;
character = 1;

fGridX = -9;
fGridY = -2;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 122;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = -4;
scrBoost = 1;
available = false;