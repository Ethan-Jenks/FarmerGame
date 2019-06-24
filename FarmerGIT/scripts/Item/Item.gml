
var thisID = instance_create_depth(-100,-100,-1,oItem);

with(thisID) {
	name = argument0;
	quality = min(10, argument1);
	quantity = max(1, argument2);
	sprite = argument3;
	innates = ds_map_create();
	attributes = ds_map_create();
}
thisID.handler = id;
return thisID;