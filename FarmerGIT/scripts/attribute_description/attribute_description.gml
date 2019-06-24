switch(argument1) {
	case "Mining Efficiency":	return "Mining Efficiency x" + string(1 + argument0);
	case "Mining Level":	return "Mining Level +" + string(argument0);
	case "Heal": return "Heals " + string(argument0) + " HP";
	case "Damage": return "Damage: " + string(argument0);
	default: return "Invalid Attribute";
}