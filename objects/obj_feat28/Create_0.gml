/// @description Insert description here
// You can write your code in this editor
featNum = 28;
character = 0;

fGridX = 6
fGridY = 14;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 23;
prereq[1] = 24;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = 8;
scrBoost = 2;
available = false;