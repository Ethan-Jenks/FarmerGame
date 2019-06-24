with(currentObjective) {
	if(heldItem.name == EMPTY) return;
	if((inputItem == "" || heldItem.name == inputItem) && heldItem.quantity > 0) {
		inputBar.current += max(heldItem.quality * 5,1);
		inputItem = heldItem.name;
		
		var key = ds_map_find_first(heldItem.attributes);
		for(var i = 0; i < ds_map_size(heldItem.attributes); i++) {
			var thisAttribute = ds_map_find_value(heldItem.attributes, key);

			if(!ds_map_add(currentObjective.potentialAttributes, key, thisAttribute)) {
				var oldAttribute = ds_map_find_value(currentObjective.potentialAttributes, key);
				ds_map_replace(currentObjective.potentialAttributes, key, oldAttribute + thisAttribute);
			}
		
			key = ds_map_find_next(heldItem.attributes, key);
		}
		
		use_held_item();
	}
	
}