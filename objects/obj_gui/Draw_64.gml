var _font_map = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!?.%;:$#'/\\()&*+,-<>=@[]^_{}~";
var _fnt_gui = font_add_sprite_ext(fnt_gui, _font_map, 0, 0);
draw_set_color(c_black);
draw_rectangle(0, 0, 640, 16*2, 0);
draw_set_color(-1);

draw_set_valign(1);
draw_set_font(_fnt_gui);
draw_text(4, 16, "Items:" + string(global.item_counter) + "/" + "8");
draw_set_font(-1);
draw_set_valign(1);