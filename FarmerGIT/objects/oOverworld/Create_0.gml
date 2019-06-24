inOverworld = true;
w = 7;
h = 7;

var xx = x;
var yy = y;
Manager.playerItems.show = false;
stage = 1;

for(var i = 0; i < w; i++) {
	xx = x;
	for(var j = 0; j < h; j++) {
		tile[i,j] = instance_create_depth(xx,yy,40,oTile);
		xx += oTile.sprite_width;
	}
	yy += oTile.sprite_height;
}
width = xx - x;
height = yy - y;
var middleTile = tile[(w div 2), (h div 2)];
player = instance_create_depth(middleTile.x, middleTile.y, middleTile.depth - 1, oOverworldPlayer);
player.xt = w div 2;
player.yt = w div 2;

		
		
for(var i = 0; i < w; i++) {
	for(var j = 0; j < h; j++) {
		if(irandom(5) = 0 && (i != player.yt || j != player.xt)) {
			tile[i,j].holding = "Mine";
		}
	}
}