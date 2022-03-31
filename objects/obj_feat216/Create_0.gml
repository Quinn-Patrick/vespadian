/// @description Insert description here
// You can write your code in this editor
featNum = 216;
character = 2;

fGridX = 6;
fGridY = 3;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 213;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = -3;
scrBoost = 1;
available = false;