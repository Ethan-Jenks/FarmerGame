event_inherited();

/// BAKE TIME BAR
if(!needsIngredients > 0 && bakeTime.current < 100) {
	bakeTime.current += bakeTime.spd;
}