function oscilar_opacidade(opacidade_min = 0, opacidade_max = 1, veloc = 0,){
	var onda = sin(current_time * veloc);
	
	onda = (onda + 0.5/ 1);
	
	image_alpha = lerp(opacidade_max, opacidade_min, onda);
}

function aumentar_tamanho(escalamin = 1, escalamax = 1, veloc_aument_escala = 1){
	var mouse_sobre = position_meeting(mouse_x, mouse_y, id);
	var escala = 0;
	
	if(mouse_sobre){
		escala = escalamax;
	}

	else{
		escala = escalamin;
	}

	image_xscale = lerp(image_xscale, escala, veloc_aument_escala);
	image_yscale = lerp(image_yscale, escala, veloc_aument_escala);
}

function desenhando_cartas(){
	draw_self();

	draw_sprite_ext(spr_moldura, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

	draw_sprite_ext(spr_tipo, 0, x - 16, y + 28, escala_tipo, escala_tipo, image_angle, image_blend, image_alpha);

	draw_sprite_ext(spr_tipo, 4, x + 18, y + 28, escala_tipo, escala_tipo, image_angle, image_blend, image_alpha);

	draw_set_font(fnt_txt_g);


	draw_text_transformed_color(x - 19, y + 9,"0", escala_tipo, escala_tipo, image_angle, c_white, c_white, c_white, c_white,image_alpha);

	draw_text_transformed_color(x + 15, y + 9, "0", escala_tipo, escala_tipo, image_angle, c_white, c_white, c_white, c_white,image_alpha);

	draw_set_font(-1)

	draw_sprite_ext(spr_reino_lama, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

	if(mouse_sobre){
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
	
		draw_sprite_ext(spr_nome, 0, x, y - 25 * image_xscale, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
		draw_text_transformed_color(x, y - 26 * image_yscale, "nome", escala_tipo, escala_tipo, image_angle, c_black, c_black, c_black, c_black, image_alpha);
	
		draw_set_halign(-1);
		draw_set_valign(-1);
	
		draw_sprite_ext(spr_efeito, img, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	}

}