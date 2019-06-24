var ingredient = tryIngredient(heldItem);
if(ingredient != noone) {
	currentObjective.qualityBar.current += ingredient.quality;
	
	var key = ds_map_find_first(ingredient.attributes);
	for(var i = 0; i < ds_map_size(ingredient.attributes); i++) {
		var thisAttribute = ds_map_find_value(ingredient.attributes, key);

		if(!ds_map_add(currentObjective.potentialAttributes, key, thisAttribute)) {
			var oldAttribute = ds_map_find_value(currentObjective.potentialAttributes, key);
			ds_map_replace(currentObjective.potentialAttributes, key, oldAttribute + thisAttribute);
		}
		
		key = ds_map_find_next(ingredient.attributes, key);
	}
	
	use_held_item();
}