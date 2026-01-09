var _font_map = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!?.%;:$#'/\\()&*+,-<>=@[]^_{}~";
var _fnt_gui = font_add_sprite_ext(fnt_gui, _font_map, 0, 0);
var _pos_h = display_get_gui_width();
draw_set_color(c_black);
draw_rectangle(0, 0, 640, 16*2, 0);
draw_set_color(-1);

draw_set_halign(1);
draw_set_valign(1);
draw_set_font(_fnt_gui);
draw_text(_pos_h/2, 16, "(" + string(global.item_counter) + "/" + "8" + ")");
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);