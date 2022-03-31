function encInit(argument0) {
	encFName = argument0;
	if(encFName != "")
	{
		encFName = "files/"+encFName;
		ds_list_clear(global.encs);
		ds_list_clear(global.encP);

		encF = file_text_open_read(encFName);

		while(!file_text_eof(encF))
		{
			ds_list_add(global.encP, real(file_text_readln(encF)));
			next = real(file_text_readln(encF));
			while(next != -1)
			{
				ds_list_add(global.encs, next);
				ds_list_add(global.encs, real(file_text_readln(encF)));
				ds_list_add(global.encs, real(file_text_readln(encF)));
				next = real(file_text_readln(encF));
				if(next == -1)ds_list_add(global.encs, -1);
			}
		}

		file_text_close(encF);
	}

	if(encFName == "")
	{
		clearEnc();
	}


}
