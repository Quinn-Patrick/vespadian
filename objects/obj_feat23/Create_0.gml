/// @description Insert description here
// You can write your code in this editor
featNum = 23;
character = 0;

fGridX = 7
fGridY = 12

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 17;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = -1;
scrBoost = 1;
available = false;