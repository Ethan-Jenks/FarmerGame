if(pickedUp) {
	x = oMouseCollision.x - sprite_width/2;
	y = oMouseCollision.y - sprite_height/2;	
}
var buffer = 8;
if(x < buffer) x = buffer;
if(y < buffer) y = buffer;
if(x > room_width - width - buffer) x = room_width - width - buffer;
if(y > room_height - height - buffer) y = room_height - height - buffer;