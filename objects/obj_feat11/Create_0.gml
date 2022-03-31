/// @description Insert description here
// You can write your code in this editor
featNum = 11;
character = 0;

fGridX = -6;
fGridY = 8;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 10;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = -5;
scrBoost = 2;
available = false;