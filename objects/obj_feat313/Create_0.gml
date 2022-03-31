/// @description Insert description here
// You can write your code in this editor
featNum = 313;
character = 3;

fGridX = 4;
fGridY = -4;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 312;


featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = -3;
scrBoost = 1;
available = false;