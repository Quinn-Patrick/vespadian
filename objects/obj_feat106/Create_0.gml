/// @description Insert description here
// You can write your code in this editor
featNum = 106;
character = 1;

fGridX = -1;
fGridY = 6;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 104;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = -4;
scrBoost = 1;
available = false;