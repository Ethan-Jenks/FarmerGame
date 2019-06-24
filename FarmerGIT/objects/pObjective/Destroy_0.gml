for(var i = 0; i < ds_list_size(barList); i++) {
	var thisBar = ds_list_find_value(barList,i);
	instance_destroy(thisBar);
}

for(var i = 0; i < ds_list_size(buttonList); i++) {
	var thisButton = ds_list_find_value(buttonList,i);
	instance_destroy(thisButton);
}

ds_list_destroy(barList);
ds_list_destroy(buttonList);
ds_map_destroy(ingredientMap);
ds_map_destroy(originalIngredients);
ds_map_destroy(potentialAttributes);
currentObjective = noone;