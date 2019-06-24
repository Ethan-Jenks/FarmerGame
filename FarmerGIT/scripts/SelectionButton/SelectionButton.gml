///@function oSelectionButton(name, sprite)

var thisID = instance_create_depth(-1000,-1000,argument2.depth - 1,oSelectionButton);

with(thisID) {
	name = argument0;
	sprite = argument1;
	menu = argument2;
}
return thisID;