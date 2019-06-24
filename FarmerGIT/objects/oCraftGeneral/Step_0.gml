/// COMPLETE CHECK
if(progressBar.current >= progressBar.maximum || healthBar.current <= 0) {
	complete = true;	
}

qualityBar.fauxPercent = (qualityBar.current / (qualityBar.maximum*5/6));
progressBar.label = "Completion: " + string(progressBar.current) + "/" + string(progressBar.maximum);
qualityBar.label = "Quality: " + string(qualityBar.fauxPercent * 100) + "%";
healthBar.label = "Durability: " + string(healthBar.current);


/// ON COMPLETE
event_inherited();