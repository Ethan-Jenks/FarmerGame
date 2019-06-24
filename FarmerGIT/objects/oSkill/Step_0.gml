if(curve[level] != -1) {
	if(experience >= curve[level]) {
		experience -= curve[level];
		level++;
	}
}