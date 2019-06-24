if(currentObjective != noone) {
	instance_destroy(currentObjective);	
}
currentObjective = instance_create_depth(0,0,0,oSmelt);