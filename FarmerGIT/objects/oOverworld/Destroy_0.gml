inOverworld = false;
Manager.playerItems.show = true;
if(currentObjective != noone) {
	instance_destroy(currentObjective);	
}
	
for(var i = 0; i < w; i++) {
	for(var j = 0; j < h; j++) {
		instance_destroy(tile[i,j]);
	}
}

instance_destroy(player);