if(interact(gridx, gridy)&&!global.inDial)
{
    global.inDial = true;
    state = 1;
    
}
if(global.inDial == true && state == 1)
{
    dialogue("dialogue.txt", 34, 34);
}

if(state == 2){
	learnPower(0,2);
	learnPower(0,3);
	learnPower(0,7);
	learnPower(0,8);
	learnPower(0,9);
	learnPower(0,10);
	learnPower(0,11);
	
	learnPower(3,103);
	learnPower(3,104);
	learnPower(3,105);
	
	
	learnPower(1,204);
	learnPower(1,205);
	learnPower(1,206);
	learnPower(1,207);
	learnPower(1,208);
	learnPower(1,209);
	learnPower(1,210);
	learnPower(1,212);
	learnPower(1,213);
	learnPower(1,214);
	learnPower(1,215);
	learnPower(1,216);
	
	learnPower(2,304);
	learnPower(2,305);
	learnPower(2,306);
	learnPower(2,307);
	learnPower(2,313);
	learnPower(2,314);
	learnPower(2,315);
	learnPower(2,319);
	learnPower(2,320);
	learnPower(2,321);
	learnPower(2,322);
	learnPower(2,323);
	learnPower(2,324);
	learnPower(2,325);
	learnPower(2,326);
	learnPower(2,327);
	learnPower(2,302);
	learnPower(2,303);
	
	
}
draw_self();

