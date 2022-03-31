/// @description Insert description here
// You can write your code in this editor
featNum = 128;
character = 1;

fGridX = -11;
fGridY = -7;

for(i = 4; i > -1; i--)
{
	prereq[i] = -1;
}

prereq[0] = 125;

featName = findFeatName(featNum);
featDes = findFeatDescription(featNum);

scr = -3;
scrBoost = 1;
available = false;