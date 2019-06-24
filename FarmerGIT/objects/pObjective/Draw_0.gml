draw_set_default();
draw_set_halign(1);
var xx = room_width/2;
var buffer = 16;
var yy = buffer;
draw_set_font(fButton);
draw_text(xx, yy, name);

draw_set_font(fDefault);

yy += buffer;
for(var i = 0; i < ds_list_size(activeSkills); i++) {
	draw_skill(xx, yy, ds_list_find_value(activeSkills, i));
	yy += lineHeight;
}
height = yy;

buffer = 8;
xx = room_width/5;

for(var i = 0; i < ds_list_size(barList); i++) {
	var thisBar = ds_list_find_value(barList,i);
	thisBar.y = yy;
	thisBar.x = xx;
	
	yy += thisBar.height + buffer;
}

for(var i = 0; i < ds_list_size(buttonList); i++) {
	var thisButton = ds_list_find_value(buttonList,i);
	thisButton.y = yy;
	thisButton.x = xx;
	
	xx += thisButton.width + buffer;
}


if(needsIngredients) {
	var displayText = "Ingredients Needed:";
	var ingredientName = ds_map_find_first(ingredientMap);
	for (var i = 0; i < ds_map_size(ingredientMap); i++;) {
		var ingredientAmount = ds_map_find_value(ingredientMap, ingredientName);
		if(ingredientAmount > 0) {
			displayText += "\n" + ingredientName + ": " + string(ingredientAmount);
			ingredientName = ds_map_find_next(ingredientMap, ingredientName);
		}
	}
	draw_set_default();
	draw_set_valign(0);
	draw_text(xx, yy, displayText);
}

height = yy;