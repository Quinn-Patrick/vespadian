function battleMessage(argument0) {
	message = argument0;
	battleMes = true;
	message = string_replace_all(message, "\n", "");
	message = string_replace_all(message, "\r", "");
	draw_text_ext(112, 656, message, 16, 800);


}
