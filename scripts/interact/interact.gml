function interact(argument0, argument1) {
	if(!global.stopped) return false;
	gridx = argument0;
	gridy = argument1;

	xtop = gridx;
	ytop = gridy-1;

	xbot = gridx;
	ybot = gridy+1;

	xrit = gridx+1;
	yrit = gridy;

	xlef = gridx-1;
	ylef = gridy;

	//draw_text(300,300,string(xtop) + " " +string(ytop) + " "  + string(global.ovx) + " "  + string(global.ovy));
	if(global.control)
	{
    
	    if(global.ovx == xtop && global.ovy == ytop)
	    {
        
	        if(obj_player.dir == 2)
	        {
	            if(key(9))return true;
	        }
	    }
	    else if(global.ovx == xrit && global.ovy == yrit)
	    {
        
	        if(obj_player.dir == 3)
	        {
	            if(key(9))return true;
	        }
	    }
	    else if(global.ovx == xbot && global.ovy == ybot)
	    {
        
	        if(obj_player.dir == 0)
	        {
	            if(key(9))return true;
	        }
	    }
	    else if(global.ovx == xlef && global.ovy == ylef)
	    {
        
	        if(obj_player.dir == 1)
	        {
	            if(key(9))return true;
	        }
	    }
    
	}



}
