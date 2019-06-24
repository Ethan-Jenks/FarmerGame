x = mouse_x;
y = mouse_y;
tooltip = noone;
tooltipColor = c_gray;

ds_list_clear(collisionList);

collision_point_list(x,y, pUI, true, true, collisionList, false);
var topDepth = 1000;
var topOther = noone;
for(var i = 0; i < ds_list_size(collisionList); i++) {
	colOther = ds_list_find_value(collisionList, i);
	if(colOther != noone && colOther.tip != "") {
		if(colOther.depth < topDepth) {
			tooltip = colOther.tip;	
			topDepth = colOther.depth
			topOther = colOther;
		}
	}
}
	
if(topOther != noone && object_get_name(topOther.object_index) == "oItem") {
	switch(ds_map_size(topOther.attributes)) {
		case 0:
			tooltipColor = c_gray;
			break;
		case 1:
			tooltipColor = c_aqua;
			break;
		case 2:
			tooltipColor = c_yellow;
			break;
		case 3:
			tooltipColor = c_purple;
			break;
		default:
			tooltipColor = c_gray;
			break;
	}
	if(topOther.quality >= 10 && topOther.applicableSlot != -1) {
		tooltipColor = c_red;
	}
}