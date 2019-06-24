// Calculate Equipment Stats
miningEfficiency = 1;
attack = 1;

for(var i = 0; i < ds_list_size(equippedItems); i++) {
	var thisItem = ds_list_find_value(equippedItems, i);
	if(thisItem.applicableSlot == i && i != CONSUMABLE) {
		with(thisItem) {
			var key = ds_map_find_first(innates);
			for(var j = 0; j < ds_map_size(innates); j++) {
				var thisAttribute = ds_map_find_value(innates, key);
				switch(key) {
					case "Mining Efficiency":	Manager.miningEfficiency += thisAttribute;
						break;
					default:
						break;
				}
				key = ds_map_find_next(innates, key);
			}
			
			var key = ds_map_find_first(attributes);
			for(var j = 0; j < ds_map_size(attributes); j++) {
				var thisAttribute = ds_map_find_value(attributes, key);
				switch(key) {
					case "Mining Efficiency":	Manager.miningEfficiency += thisAttribute;
						break;
					default:
						break;
				}
				key = ds_map_find_next(attributes, key);
			}
			
		}
	}
}

if(hp < 0) {
	hp = 0;	
}
if(hp > 100) {
	hp = 100;	
}