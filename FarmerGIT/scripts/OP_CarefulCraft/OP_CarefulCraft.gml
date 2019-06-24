if(!currentObjective.needsIngredients) {
	if(irandom(100) < 95) {
		currentObjective.progressBar.current += 10;
	}
	currentObjective.healthBar.current -= 10;
}