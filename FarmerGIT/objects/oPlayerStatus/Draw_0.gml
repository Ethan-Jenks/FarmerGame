event_inherited();

var xx = x;
var yy = y;
var buffer = 8;
width = 0;
height = 0;


// Equipment
yy += buffer;
xx += offHand.sprite_width + buffer;

head.x = xx;
head.y = yy;

yy += head.sprite_height + buffer;
xx -= offHand.sprite_width + buffer;

offHand.x = xx;
offHand.y = yy;

xx += offHand.sprite_width + buffer;

chest.x = xx;
chest.y = yy;

xx += chest.sprite_width + buffer;

mainHand.x = xx;
mainHand.y = yy;

xx -= chest.sprite_width + buffer + offHand.sprite_width + buffer;
yy += chest.sprite_height + buffer;

consumable.x = xx;
consumable.y = yy;

xx += offHand.sprite_width + buffer;

legs.x = xx;
legs.y = yy;

xx += chest.sprite_width + buffer;

consumeButton.x = xx;
consumeButton.y = yy;

xx +=  mainHand.sprite_width;
yy += legs.sprite_width;

width = max(width, xx - x);
height = max(height, yy - y);

//Health Bar
yy = y + buffer/2;
xx = x + width + buffer;
draw_set_default();
draw_set_color(c_black);
draw_set_halign(1);
draw_set_valign(0);
var barH= 80;
var barW = 10;
var textToDraw = "HP";
draw_text(xx + 5,yy,textToDraw);

yy += string_height(textToDraw);

if(oMouseCollision.x > xx && oMouseCollision.x < xx + barW && oMouseCollision.y > yy && oMouseCollision.y < yy + barH) {
	tooltip = "HP: " + string(Manager.hp) + "/" + string(Manager.maxHp);	
}
draw_rectangle(xx,yy,xx + barW, yy + barH,false);
draw_set_color(c_green);
draw_rectangle(xx+1,yy + barH-1, xx + barW - 1, relative_distance(yy+barH-1,yy+1,Manager.hp/Manager.maxHp),false);

yy += barH;
xx += max(string_width(textToDraw),barW);

height = max(height,yy - y);
width = max(width,xx - x);
