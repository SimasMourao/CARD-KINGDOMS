draw_self();
draw_set_halign(1);
draw_set_valign(1);
draw_set_font(fonte);
draw_text_transformed_color(x, y, texto, image_xscale, image_yscale, image_angle, cor, cor, cor, cor, image_alpha);

draw_set_halign(-1);
draw_set_valign(-1);