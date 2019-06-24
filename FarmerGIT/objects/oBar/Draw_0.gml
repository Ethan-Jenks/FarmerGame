event_inherited();
draw_set_default();

script_execute(barDraw);

draw_set_default();
draw_set_halign(0);
draw_set_valign(2);
draw_set_color(c_white);
draw_text(x2 + 2, y2 + 5, label);