draw_self();

icone();

draw_set_halign(1);
draw_set_valign(1);
draw_set_font(fonte);
if(mouse_sobre){
	draw_text_transformed_color(x, y + 28 * image_yscale, texto, image_xscale, image_yscale, image_angle, cor, cor, cor, cor, image_alpha);
}
draw_set_halign(-1);
draw_set_valign(-1);