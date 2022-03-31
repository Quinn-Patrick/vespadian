function key(argument0) {
	in = argument0;
	
	gpSlot = 0;
	
	if(gamepad_is_connected(4)) gpSlot = 4;

	switch(in)
	{
	    case 0: 
	    if(keyboard_check(global.right) || gamepad_button_check(gpSlot, gp_padr)
		|| gamepad_axis_value(gpSlot, gp_axislh) > 0.5 || gamepad_hat_value(gpSlot, 0) == 2) return true;
	    else return false;
		break;
    
	    case 1: 
	    if(keyboard_check(global.right) || gamepad_button_check(gpSlot, gp_padr)
		|| gamepad_axis_value(gpSlot, gp_axislh) > 0.5 || gamepad_hat_value(gpSlot, 0) == 2) 
		{
			global.rTick++;
			if(global.rTick == 1 || (global.rTick > global.keyWait && global.rTick % 3 == 0))return true;
		
		
		}
	    else 
		{
			global.rTick = 0;
			return false;
		}
		break;
    
	    case 2: 
	    if(keyboard_check(global.left) || gamepad_button_check(gpSlot, gp_padl)
		|| gamepad_axis_value(gpSlot, gp_axislh) < -0.5 || gamepad_hat_value(gpSlot, 0) == 8) return true;
	    else return false;
		break;
    
	    case 3: 
	    if(keyboard_check(global.left) || gamepad_button_check(gpSlot, gp_padl)
		|| gamepad_axis_value(gpSlot, gp_axislh) < -0.5 || gamepad_hat_value(gpSlot, 0) == 8) 
		{
			global.lTick++;
			if(global.lTick == 1 || (global.lTick > global.keyWait && global.lTick % 3 == 0))return true;
		
		
		}
	    else 
		{	
			global.lTick = 0;
			return false;
		}
		break;
    
	    case 4: 
	    if(keyboard_check(global.up) || gamepad_button_check(gpSlot, gp_padu)
		|| gamepad_axis_value(gpSlot, gp_axislv) < -0.5 || gamepad_hat_value(gpSlot, 0) == 1) return true;
	    else return false;
		break;
    
	    case 5: 
	    if(keyboard_check(global.up) || gamepad_button_check(gpSlot, gp_padu)
		|| gamepad_axis_value(gpSlot, gp_axislv) < -0.5 || gamepad_hat_value(gpSlot, 0) == 1) 
		{
			global.uTick++;
			if(global.uTick == 1 || (global.uTick > global.keyWait && global.uTick % 3 == 0))return true;
		
		
		}
	    else 
		{
			global.uTick = 0;
			return false;
		}
		break;
    
	    case 6: 
	    if(keyboard_check(global.down) || gamepad_button_check(gpSlot, gp_padd)
		|| gamepad_axis_value(gpSlot, gp_axislv) > 0.5 || gamepad_hat_value(gpSlot, 0) == 4) return true;
	    else return false;
		break;
    
	    case 7: 
	    if(keyboard_check(global.down) || gamepad_button_check(gpSlot, gp_padd)
		|| gamepad_axis_value(gpSlot, gp_axislv) > 0.5 || gamepad_hat_value(gpSlot, 0) == 4) 
		{
			global.dTick++;
			if(global.dTick == 1 || (global.dTick > global.keyWait && global.dTick % 3 == 0))return true;
		
		
		}
	    else 
		{
			global.dTick = 0;
			return false;
		}
		break;
    
	    case 8:
	    if(keyboard_check(global.conf) || gamepad_button_check(gpSlot, gp_face3)
		|| gamepad_button_check_pressed(gpSlot, gp_face1)) return true;
	    else return false;
		break;
    
	    case 9:
	    if(keyboard_check_pressed(global.conf) || gamepad_button_check_pressed(gpSlot, gp_face3)
		 || gamepad_button_check_pressed(gpSlot, gp_face1)){
		
	        if(global.confRef <= 0)
			{
				global.confRef = 2;
				return true;
			}
	        else return false;
		}
	    else return false;
		break;
	
		case 10:
	    if(keyboard_check_pressed(global.back) || gamepad_button_check_pressed(gpSlot, gp_start)
		|| gamepad_button_check_pressed(gpSlot, gp_face2) || gamepad_button_check_pressed(gpSlot, gp_face4)){
	        if(global.backRef <= 0)
			{
				global.backRef = 2;
				return true;
			}
	        else return false;
	    }
	    else return false;
		break;
	}



}
