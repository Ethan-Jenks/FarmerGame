var outputItem = argument0;

var item = noone;

switch(outputItem) {
	case "Iron Bar":
		var rarity = irandom_range(min(Manager.smeltingSkill.level div 2, 4),4);
		item = Item("Iron Bar",rarity,1,iIronBar);
		if(!irandom(9)) {
			add_attribute(item, "Mining Efficiency", random(0.2));
		}
		Manager.smeltingSkill.experience += item.quality;
		break;
	case "Copper Bar":
		var rarity = irandom_range(min(Manager.smeltingSkill.level div 2, 4),4);
		item = Item("Copper Bar",rarity,1,iCopperBar);
		Manager.smeltingSkill.experience += item.quality;
		break;
	default:
		var rarity = 0;
		item = Item("Ash",rarity,1,iAsh);
		Manager.smeltingSkill.experience += item.quality;
		break;
}

var key = ds_map_find_first(currentObjective.potentialAttributes);
for(var i = 0; i < ds_map_size(currentObjective.potentialAttributes); i++) {
	var thisAttribute = ds_map_find_value(currentObjective.potentialAttributes, key);

	add_attribute(item, key, thisAttribute);
		
	key = ds_map_find_next(currentObjective.potentialAttributes, key);
}

return item;