/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_dungeonMist)){
	self.image_alpha = 0.5-(obj_dungeonMist.image_alpha);
	if(self.image_alpha < 0) self.image_alpha = 0;
}
else self.image_alpha = 0;
draw_self();