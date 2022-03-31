/// @description Insert description here
// You can write your code in this editor
featNum = 308;
character = 3;

fGridX = 5;
fGridY = 0;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 307;
prereq[1] = 304;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = -3;
scrBoost = 1;
available = false;