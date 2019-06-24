var thisID = instance_create_depth(-100,-100,-1,oItem);

with(thisID) {
	name = EMPTY;
	quality = 0;
	quantity = 1;
	sprite = iPotato;
	innates = ds_map_create();
	attributes = ds_map_create();
}
thisID.handler = id;
return thisID;