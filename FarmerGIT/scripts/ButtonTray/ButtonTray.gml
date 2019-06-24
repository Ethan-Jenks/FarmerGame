///@function ObjectiveButton(x,y,pageSize,closable)
///@param x
///@param y
///@param pageSize
///@param closable

var thisID = instance_create_depth(argument0,argument1,10,oButtonTray);

with(thisID) {
	pageSize = argument2;
	if(argument3) {
		var tempButton = ObjectiveButton(OP_DestroyHandler, "X", "Close");
		tempButton.handler = id;
		ds_list_add(buttons, tempButton);
	}
}

return thisID;