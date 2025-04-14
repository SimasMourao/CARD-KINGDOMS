draw_text(x +40, y +40, global.vida);
switch(global.vida){
	case 3:
	draw_sprite_ext(spr_coracao, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	break;
	
	case 2:
	draw_sprite_ext(spr_coracao, 1, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	break;
	
	case 1:
	draw_sprite_ext(spr_coracao, 2, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	break;
	
	case 0:
	draw_sprite_ext(spr_coracao, 3, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	break
	
	default:
	draw_sprite_ext(spr_coracao, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}