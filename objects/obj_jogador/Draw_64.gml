
switch(global.vida){
	case 3:
	draw_sprite_ext(spr_coracao_1, 0,460, 641, escala_coracao, escala_coracao, image_angle, image_blend, image_alpha);
	break;
	
	case 2:
	draw_sprite_ext(spr_coracao_1, 1, 460, 641, escala_coracao, escala_coracao, image_angle, image_blend, image_alpha);
	break;
	
	case 1:
	draw_sprite_ext(spr_coracao_1, 2, 460, 641, escala_coracao, escala_coracao, image_angle, image_blend, image_alpha);
	break;
	
	case 0:
	draw_sprite_ext(spr_coracao_1, 3,460, 641, escala_coracao, escala_coracao, image_angle, image_blend, image_alpha);
	break
	
	default:
	draw_sprite_ext(spr_coracao_1, 0, 460, 641, escala_coracao, escala_coracao, image_angle, image_blend, image_alpha);
}
	
switch(global.vida_inimigo){
	case 3:
	draw_sprite_ext(spr_coracao_inimigo, 0, 975, 60, escala_coracao, escala_coracao, image_angle, image_blend, image_alpha);
	break;
	
	case 2:
	draw_sprite_ext(spr_coracao_inimigo, 1, 975, 60, escala_coracao, escala_coracao, image_angle, image_blend, image_alpha);
	break;
	
	case 1:
	draw_sprite_ext(spr_coracao_inimigo, 2, 975, 60, escala_coracao, escala_coracao, image_angle, image_blend, image_alpha);
	break;
	
	case 0:
	draw_sprite_ext(spr_coracao_inimigo, 3, 975, 60, escala_coracao, escala_coracao, image_angle, image_blend, image_alpha);
	break
	
	default:
	draw_sprite_ext(spr_coracao_inimigo, 0, 975, 60, escala_coracao, escala_coracao, image_angle, image_blend, image_alpha);
}
	
draw_set_font(fnt_press);
draw_set_valign(0);
for(var i = tempo_atual; i > 0; i--){
	if(global.vez_jogador == true){
		draw_sprite_ext(spr_barra, image_index, 1366 - 16 * i, 760, image_xscale, image_yscale, image_angle, c_white, image_alpha);
		draw_text_transformed_color(415, 670, "sua vez!", image_xscale, image_yscale, image_angle, c_white, c_white, c_white, c_white, image_alpha);
	}
	else{
		draw_sprite_ext(spr_barra, image_index, -16 + 16 * i, 8, image_xscale, image_yscale, image_angle, c_red, image_alpha);
		draw_text_transformed_color(929, 12, "inimigo!", image_xscale, image_yscale, image_angle, c_red, c_red, c_red, c_red, image_alpha);
	}
}
draw_set_font(-1);
//draw_text(60, 40, tempo_atual);
//draw_text(100, 40, global.vez_jogador);