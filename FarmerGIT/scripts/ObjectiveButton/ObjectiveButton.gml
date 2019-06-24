///@function ObjectiveButton(onPress,key,tip)
///@param onPress
///@param key
///@param tip

var thisID = instance_create_depth(-1000,-1000,0,oObjectiveButton);

with(thisID) {
	onPress = argument0;
	key = argument1;
	tip = argument2;
}
thisID.handler = id;
return thisID;