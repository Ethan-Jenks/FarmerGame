needsIngredients = false;
if(ds_map_size(ingredientMap) > 0) {
	var ingredientName = ds_map_find_first(ingredientMap);
	for (var i = 0; i < ds_map_size(ingredientMap); i++;) {
		var ingredientAmount = ds_map_find_value(ingredientMap, ingredientName);
		if(ingredientAmount > 0) {
			needsIngredients = true;
		}
	}
}

/// ON COMPLETE
if(complete) {
	event_user(0);
	if(inOverworld) {
		instance_destroy();	
	}
}