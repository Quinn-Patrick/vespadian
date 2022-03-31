/// @description Insert description here
// You can write your code in this editor
if(interact(gridx, gridy)&&!global.inDial)
{
    global.inDial = true;
    state = 1;
}
if(global.inDial == true && state == 1)
{
	if(!global.events[190])
	{
		eventGo(61);
		global.events[190] = true;
		global.inDial = false;
		state = 0;
	}
	else
	{
		dialogue("miscDialogue.txt", 45, 45);
	}
}
