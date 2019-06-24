with(currentObjective) {
	if(heldItem == noone) return;
	if(heldItem.name == "Coal" && heldItem.quantity > 0) {
		heatBar.current += max(heldItem.quality * 3,1);
		
		use_held_item();
	}
}