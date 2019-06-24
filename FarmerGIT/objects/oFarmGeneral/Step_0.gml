/// COMPLETE CHECK
if(progressBar.current >= progressBar.maximum) {
	complete = true;	
}

/// WAIT BUTTON
waitButton.tip = "Wait:\n + " + string(max(Manager.farmingSkill.level,1)) + " Progress";

/// ON COMPLETE
event_inherited();