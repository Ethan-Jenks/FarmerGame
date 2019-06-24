/// HEAT BAR
if(heatBar.current > 0) {
	heatBar.current += heatSpd;
} else {
	heatBar.current = 0;	
}

/// INPUT/PROGRESS BAR
if(progressBar.current <= 0) {
	progressItem = "";	
}
if(inputBar.current > 0) {
	if((progressItem = "" && heatBar.current > 0) || inputItem = progressItem ) {
		inputBar.current -= heatBar.current * 0.001;
		progressBar.current += heatBar.current * 0.004;
		progressItem = inputItem;
	}
} else {
	inputBar.current = 0;
	inputItem = "";
}

/// OUTPUT ITEM
switch(progressItem) {
	case "Copper Ore":
		outputItem = "Copper Bar";
		break;
	case "Iron Ore":
		outputItem = "Iron Bar";
		break;
	case "":
		outputItem = "";
		break;
	default:
		outputItem = "Ash";
		break;
}

inputBar.label = "Input: " + inputItem;
progressBar.label = "Making: " + outputItem;



/// COMPLETE CHECK
if(progressBar.current >= progressBar.maximum) {
	complete = true;	
}

/// ON COMPLETE
event_inherited();