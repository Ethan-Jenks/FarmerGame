/// COMPLETE CHECK
if(enemyHealthBar.current <= 0) {
	complete = true;	
}


/// ON COMPLETE
event_inherited();


if(Manager.hp <= 0) {
	instance_destroy();	
}