switch(options[selected]) {
	case "New Game":
		loading = false;
		room++;
		break;
	case "Load Game":
		loading = true;
		room++;
		break;
	case "Quit":
		game_end();
		break;
}