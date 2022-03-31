function partyN(argument0) {
	parId = argument0;
	names = file_text_open_read("files/partyNames.txt");
	for(j=0; j<600; j++)
	{
		if(real(file_text_readln(names)) == parId)
		{
			out = (file_text_readln(names));
			file_text_close(names);
			return cleanString(out);
		}
		file_text_readln(names);
	}
	file_text_close(names);
	return "Missingno";


}
