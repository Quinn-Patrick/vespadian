function findFeatDescription(argument0) {
	featOffset = argument0;

	featFile = file_text_open_read("files/features.txt");

	offset = real(file_text_readln(featFile));

	while(offset != featOffset && !file_text_eof(featFile))
	{
		file_text_readln(featFile);
		file_text_readln(featFile);
		offset = real(file_text_readln(featFile));
	}

	file_text_readln(featFile);
	out = file_text_readln(featFile);

	file_text_close(featFile);

	return out;


}
