var thisID = instance_create_depth(argument0, argument1,30,oCollection);

with(thisID) {
	var fileName = argument2;
	
	items = ds_list_create();
	var i = 0;
	while(true){
		ini_open(fileName);
		if(! ini_section_exists("Item" + string(i)) ) {
			ini_close();
			break;
		}
		ini_close();
		ds_list_add(items, load_item(fileName, "Item" + string(i)));	
		i++;
	}
	size = i;
	
	leftButton = instance_create_depth(1,1,-1,oDirectionButton);
	leftButton.dir = 2;
	leftButton.handler = id;
	rightButton = instance_create_depth(1,1,-1,oDirectionButton);
	rightButton.dir = 0;
	rightButton.handler = id;
}

return thisID;
