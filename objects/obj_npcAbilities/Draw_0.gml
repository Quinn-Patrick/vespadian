if(interact(gridx, gridy)&&!global.inDial)
{
    global.inDial = true;
    state = 1;
    
}
if(global.inDial == true && state == 1)
{
    dialogue("dialogue.txt", 35, 35);
}

if(state == 2){
	learnAbility(0,1);
	learnAbility(0,2);
	learnAbility(0,3);
	learnAbility(0,4);
	learnAbility(0,5);
	learnAbility(0,6);
	learnAbility(0,7);
	
	learnAbility(1,101);
	learnAbility(1,102);
	learnAbility(1,103);
	learnAbility(1,104);
	learnAbility(1,105);
	
	learnAbility(2,201);
	learnAbility(2,202);
	learnAbility(2,203);
	learnAbility(2,204);
	learnAbility(2,205);
	learnAbility(2,206);
	learnAbility(2,207);
	learnAbility(2,208);
	learnAbility(2,209);
	learnAbility(2,210);
	
	learnAbility(3,301);
	learnAbility(3,302);
	learnAbility(3,303);
	learnAbility(3,304);
	learnAbility(3,305);
	learnAbility(3,306);
	learnAbility(3,307);
	learnAbility(3,308);
	learnAbility(3,309);
	learnAbility(3,310);
	learnAbility(3,311);
	learnAbility(3,312);
	learnAbility(3,313);
	
}
draw_self();

