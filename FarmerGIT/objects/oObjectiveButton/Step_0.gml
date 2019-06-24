if(keyboard_check_pressed(ord(key)) && onPress == OP_ExitTask) {
	script_execute(onPress);
} else {
	switch(object_get_name(handler.object_index)) {
		case "oButtonTray":
			if(keyboard_check_pressed(ord(key)) && currentObjective == noone && inOverworld = false) {
				script_execute(onPress);	
			}
			break;
		default:
			if(keyboard_check_pressed(ord(key))) {
				script_execute(onPress);	
			}
			break;
	}
}

depth = handler.depth - 1;