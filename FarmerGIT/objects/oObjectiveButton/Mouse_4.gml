if(onPress == OP_ExitTask) {
	script_execute(onPress);
} else {
	switch(object_get_name(handler.object_index)) {
		case "oButtonTray":
			if(currentObjective == noone && inOverworld = false) {
				script_execute(onPress);	
			}
			break;
		default:
			script_execute(onPress);
			break;
	}
}