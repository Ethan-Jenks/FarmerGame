/// @description 
draw_set_default();
///get camera coords
var cx = camera_get_view_x(view_camera);
var cy = camera_get_view_y(view_camera);
///make the adjustment to gui
var xx = (mouse_x-cx)*display_scalex;
var yy = (mouse_y-cy)*display_scaley;
///draw the sprite
if(tooltip != noone && (showTooltips xor mouse_check_button(mb_right)) ) {
	draw_tooltip(xx - 2, yy - 4, tooltip, tooltipColor);
}


