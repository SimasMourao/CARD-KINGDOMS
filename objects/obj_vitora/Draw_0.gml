draw_self();

oscilar_opacidade(0,1,.009);

var _y = display_get_gui_height();
var _x = display_get_gui_width();
draw_sprite_ext(spr_trofeu, image_index, _x/4, _y/4, 4, 4, image_angle, image_blend, 1);

draw_set_font(fnt_titulo)
draw_text_transformed(_x/8, _y/32, "VOCE VENCEU!", image_xscale, image_yscale, image_angle);
draw_set_font(-1);
draw_set_font(fnt_press);
draw_text_transformed_color(_x/11, 321, "PRESSIONE QUALQUER TECLA", image_xscale, image_yscale, image_angle, c_white, c_white, c_white,c_white, image_alpha);