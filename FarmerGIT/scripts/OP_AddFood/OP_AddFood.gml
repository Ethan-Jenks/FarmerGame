with(currentObjective.bakeTime) {
	var ingredient = tryIngredient(heldItem);
	if(ingredient != noone) {
		var qualAccMod = 16;
		var qualSpdMod = 0.1;
		var qualCap = 3;
		inacc = qualCap*qualAccMod - qualAccMod*ingredient.quality;
		spd = max(qualCap*qualSpdMod - qualSpdMod*ingredient.quality + 1, 1);
		if(inacc <= 0) {
			inacc = 0;	
		}
		use_held_item();
	}
}