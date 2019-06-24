if(!currentObjective.needsIngredients) {
	if(irandom(100) < 30) {
		currentObjective.progressBar.current += 30;
	}
	currentObjective.healthBar.current -= 10;
}