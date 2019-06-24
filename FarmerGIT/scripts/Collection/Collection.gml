var thisID = instance_create_depth(argument0, argument1,30,oCollection);

with(thisID) {
	size = argument2;
	items = ds_list_create();
	for(var i = 0; i < size; i++) {
		ds_list_add(items, EmptyItem());	
	}
	leftButton = instance_create_depth(1,1,-1,oDirectionButton);
	leftButton.dir = 2;
	leftButton.handler = id;
	rightButton = instance_create_depth(1,1,-1,oDirectionButton);
	rightButton.dir = 0;
	rightButton.handler = id;
}

return thisID;
