/// @description Insert description here
// You can write your code in this editor
featNum = 202;
character = 2;

fGridX = 0;
fGridY = 2;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 201;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = 7;
scrBoost = 2;
available = false;

