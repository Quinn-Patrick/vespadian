/// @description read_bmp(filename)
/// @function read_bmp
/// @param filename
function readMap(argument0) {
	//thanks, alaingalvan from github!
	// Reads 24 or 32 bit bitmap files
	//returns a ds_grid of colors encoded as rgb hex
	var handle;
	handle = file_bin_open(argument0, 0);
	var offset, width, height, bits, output;
	offset = 29;
	width = 0;
	height = 0;
	bits = 0;
	x=global.ovx*32;
	y=global.ovy*32;
	var i;
	for (i = 0; i < offset; i += 1) {
	  if (i == 10)
	    offset = file_bin_read_byte(handle);
	  else
	  if (i == 11)
	    offset += file_bin_read_byte(handle) << 8;
	  else
	  if (i == 12)
	    offset += file_bin_read_byte(handle) << 16;
	  else
	  if (i == 13)
	    offset += file_bin_read_byte(handle) << 24;
	  else
	  if (i == 18)
	    width = file_bin_read_byte(handle);
	  else
	  if (i == 19)
	    width += file_bin_read_byte(handle) << 8;
	  else
	  if (i == 20)
	    width += file_bin_read_byte(handle) << 16;
	  else
	  if (i == 21)
	    width += file_bin_read_byte(handle) << 24;
	  else
	  if (i == 22)
	    height = file_bin_read_byte(handle);
	  else
	  if (i == 19)
	    height += file_bin_read_byte(handle) << 8;
	  else
	  if (i == 20)
	    height += file_bin_read_byte(handle) << 16;
	  else
	  if (i == 21)
	    height += file_bin_read_byte(handle) << 24;
	  else
	  if (i == 28)
	    bits = file_bin_read_byte(handle);
	  else
	    file_bin_read_byte(handle); // Skip
	}

	var output;
	if(room == rm_worldMap){
		height = 512;
		width = 512;
	}
	output = ds_grid_create(width, height);

	var j;
	for (j = 0; j < height; j += 1) {
	  for (i = 0; i < width; i += 1) {

	    var r, g, b, value;
	    r = file_bin_read_byte(handle);
	    g = file_bin_read_byte(handle) << 8;
	    b = file_bin_read_byte(handle) << 16;
	    if (bits == 32)
	      file_bin_read_byte(handle);

	    value = r + g + b;

	    ds_grid_set(output, i, (height-1)-j, value);
	  }
	  if (bits == 24) {
	    // Padding
	    for (h = 0; h < (width * 3) mod 4; h += 1) {
	      file_bin_read_byte(handle);
	    }
	  }
	}

	file_bin_close(handle);

	return output;



}
