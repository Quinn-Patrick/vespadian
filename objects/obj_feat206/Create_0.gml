/// @description Insert description here
// You can write your code in this editor
featNum = 206;
character = 2;

fGridX = -4;
fGridY = 0;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 204;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = -2;
scrBoost = 1;
available = false;

