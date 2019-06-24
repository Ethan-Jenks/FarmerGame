///@function ObjectiveButton(item, key, attribute)
///@param item
///@param key
///@param attribute

if(!ds_map_add(argument0.attributes, argument1, argument2)) {
	var oldAttribute = ds_map_find_value(argument0.attributes, argument1);
	ds_map_replace(argument0.attributes, argument1, oldAttribute + argument1);
}