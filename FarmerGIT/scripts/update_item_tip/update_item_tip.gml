if(ItemIsEmpty(id)) {
	tip = "Empty";
} else {
	var key = ds_map_find_first(innates);
	var attributeTip = "";
	for(var i = 0; i < ds_map_size(innates); i++) {
		var thisAttribute = ds_map_find_value(innates, key);
		attributeTip += "\n ";
		attributeTip += attribute_description(thisAttribute, key);
		key = ds_map_find_next(innates, key);
	}
	
	var key = ds_map_find_first(attributes);
	for(var i = 0; i < ds_map_size(attributes); i++) {
		var thisAttribute = ds_map_find_value(attributes, key);
		attributeTip += "\n * ";
		attributeTip += attribute_description(thisAttribute, key);
		
		key = ds_map_find_next(attributes, key);
	}
	
	var equipTip = "";
	switch(applicableSlot) {
		case HEAD: equipTip = "\n(Head)"; break;
		case OFFHAND: equipTip = "\n(Off Hand)"; break;
		case CHEST: equipTip = "\n(Chest)"; break;
		case MAINHAND: equipTip = "\n(Main Hand)"; break;
		case LEGS: equipTip = "\n(Legs)"; break;
		case CONSUMABLE: equipTip = "\n(Consumable)"; break;
		default: equipTip = "\n(Material)"; break;
	}
	
	tip = name;
	
	for(var i = 0; i < quality; i++) {
		if(i mod 5 == 0) tip += " ";
		tip += "*";	
	}
	
	tip += equipTip
	
	if(stackable) {
		tip += "\nCount: " + string(quantity);
	}
	
	tip += attributeTip;
	
	tip += summary;
}