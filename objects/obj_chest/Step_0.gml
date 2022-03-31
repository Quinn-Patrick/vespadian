gridx = x/32;
gridy = y/32;
if(global.inDial == 0)
{
    state = 0;
}
lastx = gridx;
lasty = gridy;

if(contName == "")
{
	contName = getItemDat(chestCont, -1);
	contName = string_replace(contName, "\n", "");
	contName = string_replace(contName, "\r", "");
}
