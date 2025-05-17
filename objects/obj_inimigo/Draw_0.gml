draw_self();
for(var i = 0; i < array_length(global.baralho_inimigo); i++){
	if(global.baralho_inimigo [i] == [global.baralho_flores[i]]){
		draw_sprite_ext(spr_verso, 1,  660 + 110 *i, 55, 1.8, 1.8, 0,  c_white, .95);
	
	}
	
	if(global.baralho_inimigo [i] == [global.baralho_lama[i]]){
		draw_sprite_ext(spr_verso, 0,  660 + 110 *i, 55, 1.8, 1.8, 0,  c_white, .95);
	}
}

draw_text(60, 40, global.carta_atual_inimigo);
draw_text(60, 70, tempo_turno);

draw_set_font(fnt_press);
for(var i = tempo_atual; i > 0; i--){
	if(global.vez_jogador != true){
		draw_sprite_ext(spr_barra, image_index, -16 + 16 * i, 8, image_xscale, image_yscale, image_angle, c_red, image_alpha);
		draw_text_transformed_color(929, 12, "inimigo!", image_xscale, image_yscale, image_angle, c_red, c_red, c_red, c_red, image_alpha);
	}
}
draw_set_font(-1);