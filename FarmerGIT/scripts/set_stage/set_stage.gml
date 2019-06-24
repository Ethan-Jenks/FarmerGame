for(var i = 0; i < w; i++) {
	for(var j = 0; j < h; j++) {
		if(irandom(5) = 0 && (i != player.yt || j != player.xt)) {
			if(tile[i,j].holding = EMPTY) {
				tile[i,j].holding = "Mine";
			}
		}
	}
}