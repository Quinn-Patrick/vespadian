/// @description Insert description here
// You can write your code in this editor


if(key(1)){
	selectX++;
	if(selectX >= ds_list_size(keyboard[| selectY])) selectX = 0;
}
else if(key(3)){
	selectX--;
	if(selectX < 0) selectX = ds_list_size(keyboard[| selectY])-1;
}else if(key(5)){
	selectY--;
	if(selectY < 0) selectY = 4;
	while(selectX >= ds_list_size(keyboard[| selectY])) selectX--;
}else if(key(7)){
	selectY++;
	if(selectY > 4) selectY = 0;
	while(selectX >= ds_list_size(keyboard[| selectY])) selectX--;
}else if(key(9)){
	if(string_length(output) < characterLimit){
		if(selectY < 4){
		output = output + keyboard[| selectY][| selectX];
		}else if(selectX == 1 && selectY == 4)  output = output + " ";
	}
	if(selectY == 4){
		if(selectX == 0){
			ds_list_destroy(keyboard);
			if(shift == 0){
				keyboard = loadKeyboard("files/keyboardLower.txt");
				shift = 1;
			}else{
				keyboard = loadKeyboard("files/keyboardUpper.txt");
				shift = 0;
			}
		}else if(selectX == 2){
			output = string_delete(output, string_length(output), 1);
		}else if(selectX == 3){
			instance_destroy(self);
		}
	}
}else if(key(10)){
	instance_destroy(self);
}else if(keyboard_check_pressed(vk_backspace)){
	output = string_delete(output, string_length(output), 1);
}else if(keyboard_lastkey != -1 && !keyboard_check(vk_backspace)){
	keyboard_lastkey = -1;
	if(string_length(output) < characterLimit){
		output = cleanString(output + keyboard_lastchar);
		
	}
	keyboard_lastchar = "";
}
keyboard_lastchar = "";
