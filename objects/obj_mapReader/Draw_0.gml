var i, j;
initx = (obj_camera.camGridX)-(wi/2)-1;
finx = (wi/2)+(obj_camera.camGridX)+1;
inity = (obj_camera.camGridY)-(he/2)-1;
finy=(he/2)+(obj_camera.camGridY)+1;
depth = 1001
if(global.collisionMap != ""){
	for(i=initx; i<finx; i+=1)
	{
    
	    for(j=inity; j<finy; j+=1)
	    {
	        //draw_text(100, 100, "hi");
	        if(i >= 0 && j >= 0 && i*32 < room_width && j*32 < room_height)
	        {
			
				switch(global.map[i,j])
				{
	                case 0: draw_sprite(global.defTile, 0, i*32, j*32);
	                break;
				}
				//if(i % 4 == 0)draw_text(i*32, j*32, real(global.map[i,j]));
	        }
	    }
	}
}

/*
for(i = 0; i < room_height/32; i++){
	for(j = 0; j < room_width/32; j++){
		draw_text(j*32, i*32, global.map[j,i]);
	}
}
*/

