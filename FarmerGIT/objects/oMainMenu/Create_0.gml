globalvar loading;
loading = false;

options[0] = "New Game";
options[1] = "Load Game";
options[2] = "Quit";

selected = 0;
if(file_exists("FarmerSave.ini")) {
	selected = 1;
}