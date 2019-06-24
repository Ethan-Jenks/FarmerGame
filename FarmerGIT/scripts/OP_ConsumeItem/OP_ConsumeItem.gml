with(oPlayerStatus) {
	var equippedConsumable = ds_list_find_value(equippedItems,CONSUMABLE);
	if(!ItemIsEmpty(equippedConsumable) && equippedConsumable.applicableSlot == CONSUMABLE) {
		with(equippedConsumable) {
			var key = ds_map_find_first(innates);
			for(var i = 0; i < ds_map_size(innates); i++) {
				var thisAttribute = ds_map_find_value(innates, key);
				consumable_effect(thisAttribute, key);
				key = ds_map_find_next(innates, key);
			}
	
			key = ds_map_find_first(attributes);
			for(var i = 0; i < ds_map_size(attributes); i++) {
				var thisAttribute = ds_map_find_value(attributes, key);
				consumable_effect(thisAttribute, key);
		
				key = ds_map_find_next(attributes, key);
			}
		}

		equippedConsumable.quantity --;
		if(equippedConsumable.quantity == 0) {
			ds_list_replace(equippedItems, CONSUMABLE, EmptyItem());
		}
	}
}