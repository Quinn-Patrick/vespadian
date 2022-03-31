/// @description Insert description here
// You can write your code in this editor
featNum = 225;
character = 2;

fGridX = 0;
fGridY = 10;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 226;
prereq[1] = 227;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = -4;
scrBoost = 1;
available = false;