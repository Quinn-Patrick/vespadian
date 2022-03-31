/// @description Insert description here
// You can write your code in this editor
if(inTransition){
	global.control = false;
	if(transitionTimer > transitionTimerLimit){
		inTransition = false;
		global.control = true;
	}
	transitionTimer++;
	draw_rectangle_color(0,0,1024, 768-(768*(transitionTimer/transitionTimerLimit)), c_black, c_black, c_black, c_black, false);
}