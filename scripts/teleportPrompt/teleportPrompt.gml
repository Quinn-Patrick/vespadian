// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function teleportPrompt(promptText, initialSelection, promptx, prompty){
	if(global.prompt == undefined){
		global.prompt = instance_create_depth(promptx, prompty, obj_pauseManager.depth-1, obj_teleportLocationBox);
		
		global.prompt.promptText = promptText;
		global.prompt.selection = initialSelection; //should always be 0
	}
	
	output = global.prompt.output;
	if(output == -1) return output;
	else{
		instance_destroy(global.prompt);
		global.prompt = undefined;
		return output;
	}

}