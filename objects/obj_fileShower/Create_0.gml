/// @description Insert description here
// You can write your code in this editor
fileStore[256, 4] = 0;

for(i = 0; i < 256; i++)
{
	checkFile = file_text_open_read("file" + string(i) + ".txt");
	if(!file_text_eof(checkFile))fileStore[i,0] = real(file_text_readln(checkFile));
	else fileStore[i,0] = 0;
	if(fileStore[i,0] == 0)
	{
		fileStore[i,1] = -1;
		fileStore[i,2] = -1;
		fileStore[i,3] = -1;
		fileStore[i,4] = -1;
	}
	else
	{
		fileStore[i,1] = real(file_text_readln(checkFile));
		fileStore[i,2] = real(file_text_readln(checkFile));
		fileStore[i,3] = real(file_text_readln(checkFile));
		fileStore[i,4] = real(file_text_readln(checkFile));
	}
	file_text_close(checkFile);
}
xO = obj_pauseManager.xO;
yO = obj_pauseManager.yO;