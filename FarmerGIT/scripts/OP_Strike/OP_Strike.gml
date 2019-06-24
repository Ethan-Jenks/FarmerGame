with(currentObjective) {
	var pwr = relative_distance(0,100,strikeBar.percent);
	//var pwr = strikeBar.current;
	t = 0;
	averageStrike = ((averageStrike * numStrikes) + pwr) / (numStrikes + 1)
	numStrikes ++;
	durabilityBar.current += pwr * Manager.miningEfficiency;
}