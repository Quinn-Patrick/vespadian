/// @description Insert description here
// You can write your code in this editor
if(instance_number(obj_pauseManager) == 0) instance_destroy(self);




parentObject = obj_pauseManager;

characterSel = parentObject.classCharacter;

spriteArray[global.numberOfClasses-1] = spr_fighterM1Front;

selection = parentObject.menuSelect[8,0];
ynSelect = parentObject.menuSelect[8,1];

offset = 0;

state = 0;

for(i = 0; i < global.numberOfClasses; i++){
	rawSpriteArray = characterSpriteSwitch(i, characterSel.gender, characterSel.costume);
	spriteArray[i] = rawSpriteArray[0];
}

