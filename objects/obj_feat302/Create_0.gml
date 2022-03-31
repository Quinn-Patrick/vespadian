/// @description Insert description here
// You can write your code in this editor
featNum = 302;
character = 3;

fGridX = 0;
fGridY = 2;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 301;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = 3;
scrBoost = 2;
available = false;