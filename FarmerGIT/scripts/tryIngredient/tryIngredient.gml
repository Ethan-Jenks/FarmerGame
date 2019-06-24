var ingredient = argument0;
var amount = ds_map_find_value(currentObjective.ingredientMap,ingredient.name);
if(!is_undefined(amount)) {
	if(amount > 0) {
		ds_map_set(currentObjective.ingredientMap,ingredient.name, amount - 1);
		return ingredient;
	}
}
return noone;