/// @description Insert description here
// You can write your code in this editor
featNum = 13;
character = 0;

fGridX = 2;
fGridY = 10;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 8;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = -5;
scrBoost = 2;
available = false;