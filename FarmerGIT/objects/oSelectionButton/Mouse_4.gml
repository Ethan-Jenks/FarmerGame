if(name != "Exit") {
	if(currentObjective != noone) {
		instance_destroy(currentObjective);	
	}

	var obj = instance_create_depth(0,0,0,oBlank);
	obj.taskName = name;
	switch(menu.name) {
		case "Farming":
			with(obj)instance_change(oFarmGeneral, true);
			break;
		case "Cooking":
			with(obj)instance_change(oCookGeneral, true);
			break;
		case "Mining":
			with(obj)instance_change(oMineGeneral, true);
			break;
		case "Crafting":
			with(obj)instance_change(oCraftGeneral, true);
			break;
		case "Battle":
			with(obj)instance_change(oBattleGeneral, true);
			break;
		default:
			with(obj)instance_change(oSmelt,true);
			break;
	}
	currentObjective = obj;
} else {
	instance_destroy(menu);
}