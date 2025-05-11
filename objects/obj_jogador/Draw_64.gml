
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
