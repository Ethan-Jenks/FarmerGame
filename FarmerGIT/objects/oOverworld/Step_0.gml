event_inherited();
Manager.playerItems.show = false;

if(currentObjective == noone) {
	if(keyboard_check_pressed(vk_left) && player.xt > 0) {
		player.xt --;
		moved = true;	
	}
	if(keyboard_check_pressed(vk_right) && player.xt < w - 1) {
		player.xt ++;
		moved = true;
	}
	if(keyboard_check_pressed(vk_up) && player.yt > 0) {
		player.yt --;
		moved = true;
	}
	if(keyboard_check_pressed(vk_down) && player.yt < h - 1) {
		player.yt ++;
		moved = true;
	}
}

switch(tile[player.yt,player.xt].holding) {
	case "Mine":
		if(currentObjective != noone) {
			instance_destroy(currentObjective);	
		}
		var obj = instance_create_depth(0,0,0,oBlank);
		obj.taskName = "Coal";
		with(obj)instance_change(oMineGeneral, true);
		tile[player.yt,player.xt].holding = EMPTY;
		currentObjective = obj;
		break;
}

if(PlayerManager.hp <= 0) {
	instance_destroy();	
}