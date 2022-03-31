function powerName(argument0) {
	powId = argument0;

	/*switch(powId)
	{
		case 1:
		return "Defensive Stance";
		break;
		case 2:
		return "Mercurian Swing";
		break;
		case 3:
		return "Bull Charge";
		break;
		case 4:
		return "Fearless Guard";
		break;
		case 5:
		return "Empowering Might";
		break;
		case 6:
		return "Throw";
		break;
	
	
		case 101:
		return "Hide";
		break;
		case 201:
		return "Radiant Burst";
		break;
		case 301:
		return "Create Flames";
		break;
	
		case 401:
		return "Axe Chop";
		break;
	
		default:
		return "Unknown Power";
		break;
	}*/
	names = file_text_open_read("files/powers.txt");
	for(i=0; i<600; i++)
	{
		if(real(file_text_readln(names)) == powId)
		{
			out = (file_text_readln(names));
			file_text_close(names);
			return out;
		}
		file_text_readln(names);
	}
	file_text_close(names);
	return "Mystery Power";


}
