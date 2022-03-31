/// @description Insert description here
// You can write your code in this editor
featNum = 204;
character = 2;

fGridX = -4;
fGridY = 2;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 203;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = -5;
scrBoost = 2;
available = false;

