event_inherited();
var textToDraw = "Stage: " + string(stage);
var buffer = 2;
var titleHeight = string_height(textToDraw);
draw_set_default();
draw_set_halign(1);
draw_set_valign(0);

draw_text(x + width/2,y,textToDraw);

var xx = x;
var yy = y + titleHeight + buffer;

for(var i = 0; i < w; i++) {
	xx = x;
	for(var j = 0; j < h; j++) {
		tile[i,j].x = xx;
		tile[i,j].y = yy;
		xx += oTile.sprite_width;
	}
	yy += oTile.sprite_height;
}
width = xx - x;
height = yy - y;

player.x = tile[player.yt,player.xt].x;
player.y = tile[player.yt,player.xt].y;

/*
draw_set_default();
draw_set_color(c_gray);
draw_roundrect(x - buffer, y - buffer - titleHeight,x + width + buffer, y + height + buffer,false);
draw_set_color(c_black);
draw_roundrect(x - buffer, y - buffer - titleHeight,x + width + buffer, y + height + buffer,true);
draw_set_color(c_white);
draw_set_valign(2);
draw_set_halign(1);