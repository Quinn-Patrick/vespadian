/// @description Insert description here
// You can write your code in this editor



if(!initialized)
{
	if(global.collisionMap != "")
	{
		grid = readMap(global.collisionMap);
		for(m=0;m<ds_grid_width(grid); m+=1)
		{
		    for(n=0;n<ds_grid_height(grid);n+=1)
		    {
		        global.map[m,n] = ds_grid_get(grid,m,n);
		        global.solids[m,n]=0; //array of solid objects on the map, all coordinates don't contain solid object by default
		    }
		}
		ds_grid_destroy(grid);
		initialized = true;
	}
}