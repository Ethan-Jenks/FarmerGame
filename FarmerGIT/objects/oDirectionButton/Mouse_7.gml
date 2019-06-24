switch(object_get_name(handler.object_index)) {
	case "oButtonTray":
	
		switch(dir) {
			case 0:
				handler.page ++;
				break;
			case 2:
				handler.page --;
				break;
		}
	
		break;
		
	case "oCollection":
	
		switch(dir) {
			case 0:
				handler.page ++;
				break;
			case 2:
				handler.page --;
				break;
		}
		
		break;
		
	default:
		//instance_destroy();
		break;
}