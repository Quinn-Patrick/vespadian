/// @description Insert description here
// You can write your code in this editor
featNum = 219;
character = 2;

fGridX = 12;
fGridY = 2;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 218;


featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = 8;
scrBoost = 2;
available = false;