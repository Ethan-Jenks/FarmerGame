var item1 = argument0;
var item2 = argument1;

// Basic attributes
if(item1.name != item2.name) return false;
if(item1.quality != item2.quality) return false;

// 1 is subset of 2
var key = ds_map_find_first(item1.attributes);
for(var i = 0; i < ds_map_size(item1.attributes); i++) {
	var comparingAtt = ds_map_find_value(item2.attributes, key);
	if(is_undefined(comparingAtt)) return false;
	if(ds_map_find_value(item1.attributes, key) != comparingAtt) return false;
	key = ds_map_find_next(item1.attributes, key);
}

// 2 is subset of 1
key = ds_map_find_first(item2.attributes);
for(var i = 0; i < ds_map_size(item2.attributes); i++) {
	var comparingAtt = ds_map_find_value(item1.attributes, key);
	if(is_undefined(comparingAtt)) return false;
	if(ds_map_find_value(item2.attributes, key) != comparingAtt) return false;
	key = ds_map_find_next(item2.attributes, key);
}

// If all things are equal, return true
return true;