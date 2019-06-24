if(!currentObjective.needsIngredients) {
	if(irandom(100) < 60) {
		currentObjective.progressBar.current += 20;
	}
	currentObjective.healthBar.current -= 10;
}