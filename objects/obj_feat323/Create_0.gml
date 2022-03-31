/// @description Insert description here
// You can write your code in this editor
featNum = 323;
character = 3;

fGridX = 5;
fGridY = 9;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 322;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = -5;
scrBoost = 2;
available = false;