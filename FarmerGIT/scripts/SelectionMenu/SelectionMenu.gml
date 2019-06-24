var thisID = instance_create_depth(room_width/4,room_height/3,-3,oSelectionMenu);

with(thisID) {
	buttons = ds_list_create();
	name = argument0;
}

return thisID;
