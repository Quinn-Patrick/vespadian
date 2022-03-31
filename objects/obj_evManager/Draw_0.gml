/// @description Insert description here
// You can write your code in this editor
if(ready > 0){
	switch(actionNum){
		case(1): global.inDial = true;
			actOver = dialogue(otherFiles[0], actData[0], actData[1]); break;
		case(-1): instance_destroy(self);
	}
}

