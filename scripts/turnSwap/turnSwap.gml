function turnSwap(argument0) {
	swapInd = argument0;
	temp[0,0] = global.turns[swapInd,0];
	temp[0,1] = global.turns[swapInd,1];
	temp[1,0] = global.turns[swapInd+1,0];
	temp[1,1] = global.turns[swapInd+1,1];

	global.turns[swapInd,0] = temp[1,0];
	global.turns[swapInd,1] = temp[1,1];

	global.turns[swapInd+1,0] = temp[0,0];
	global.turns[swapInd+1,1] = temp[0,1];


}
