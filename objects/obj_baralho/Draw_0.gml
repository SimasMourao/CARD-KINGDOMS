draw_self();
draw_set_halign(1);
draw_set_valign(0);
draw_set_font(fnt);

draw_text_transformed_color(x,y + 25 * image_yscale,txt, image_xscale, image_yscale, image_angle, cor, cor, cor, cor, image_alpha);

draw_set_halign(-1);
draw_set_valign(-1);

icone();