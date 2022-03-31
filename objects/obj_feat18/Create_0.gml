/// @description Insert description here
// You can write your code in this editor
featNum = 18;
character = 0;

fGridX = 5
fGridY = 10;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 12;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = -2;
scrBoost = 1;
available = false;