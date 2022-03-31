/// @description Insert description here
// You can write your code in this editor
featNum = 221;
character = 2;

fGridX = 0;
fGridY = 6;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 220;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = -5;
scrBoost = 2;
available = false;