/// @description Insert description here
// You can write your code in this editor
featNum = 111;
character = 1;

fGridX = -4;
fGridY = 10;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 109;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = 8;
scrBoost = 2;
available = false;