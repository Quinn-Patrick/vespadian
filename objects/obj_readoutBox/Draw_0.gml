/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_text(x + 8, y + 8, headingText);
draw_text(x + 32, y + 32, bodyText);
if(multiplicity > 0){
	draw_set_halign(fa_right);
	draw_text(x + 224, y + 32, "(X " + string(multiplicity+1) + ")");
	draw_set_halign(fa_left);
}
self.image_alpha = lifeTime / 8;
