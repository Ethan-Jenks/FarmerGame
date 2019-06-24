window_set_caption("Farmer");
randomize();

///grab the width and height of view
var cw = camera_get_view_width(view_camera);
var ch = camera_get_view_height(view_camera);
///set some variables to hold the value and div that by width and height
globalvar display_scalex;
globalvar display_scaley;
display_scalex = display_get_gui_width()/cw;
display_scaley = display_get_gui_height()/ch;

// Other Global Variables
globalvar tooltip;
tooltip = noone;
globalvar tooltipColor;
tooltipColor = c_gray;


globalvar activeMenu;
activeMenu = noone;

globalvar currentObjective;
currentObjective = noone;

globalvar activeSkills;
activeSkills = ds_list_create();

globalvar debug;
debug = false;



// Constants
#macro EMPTY "empty"

#macro HEAD 0
#macro OFFHAND 1
#macro CHEST 2
#macro MAINHAND 3
#macro LEGS 4
#macro CONSUMABLE 5