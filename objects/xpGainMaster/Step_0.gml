/// @description Insert description here
// You can write your code in this editor
finished = true;


for(i = 0; i < ds_list_size(characters); i++){
	if(!characters[| i].finished) finished = false;
}
if(finished){
	if(key(9))room_goto(global.storeRoom);
}else{
	if(key(9)){
		sound(snd_select);
		characters[| focus].messageIndex++;
		if(characters[| focus].messageIndex >= ds_list_size(characters[| focus].progressionMessages))characters[| focus].finished = true;
		while(focus < 4 && characters[| focus].finished)focus++;
	}
}

if(initialized == 2){
	hello =  characters[| focus].finished;
	while(focus < 4 && characters[| focus].finished){
		focus++;
	}
	initialized = 3;
}
initialized++;
if(initialized > 2 && !is_undefined(characters[| focus])){
	if(characters[| focus].messageIndex == -1) characters[| focus].messageIndex = 0;
}