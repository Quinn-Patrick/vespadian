function cleanString(argument0) {
	stringIn = argument0;

	stringIn = string_replace_all(stringIn, "\n", "");
	stringIn = string_replace_all(stringIn, "\r", "");
	stringIn = string_replace_all(stringIn, "\b", "");
	stringIn = string_replace_all(stringIn, "\f", "");
	stringIn = string_replace_all(stringIn, "\t", "");


	return stringIn;


}
