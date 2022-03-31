if(gridx == global.ovx && gridy == global.ovy && global.event == -1 && global.stopped && stepProtector == 0){
	global.inDial = true;
    state = 1;
	stepProtector = 1;
}

draw_self();

if(gridx != global.ovx || gridy != global.ovy) stepProtector = 0;

if(global.inDial && state == 1)
{
    dialogue("dialogue.txt", 41, 41);
}
if(state == 2){
	for(i = 0; i < 4; i++) res(global.party[i]);
	depth = -1001;
}
