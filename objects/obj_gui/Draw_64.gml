var _font_map = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!?.%;:$#'/\\()&*+,-<>=@[]^_{}~";
var _fnt_gui = font_add_sprite_ext(fnt_gui, _font_map, 0, 0);

draw_set_font(_fnt_gui);
draw_text(4, 4, "TEST _0123456789 Ola mundo =)");
draw_set_font(-1);