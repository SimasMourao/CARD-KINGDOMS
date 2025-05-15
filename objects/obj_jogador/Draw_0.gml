draw_self();


if(tem_lama == true){
	draw_sprite_ext(spr_baralho, 1, 427, 557, 2, 2, image_angle, image_blend, image_alpha);
	draw_sprite_ext(spr_baralho, 0, 988, 138, 2, 2, image_angle, image_blend, image_alpha);
	
}
else{
	draw_sprite_ext(spr_baralho, 0, 427, 557, 2, 2, image_angle, image_blend, image_alpha);
	draw_sprite_ext(spr_baralho, 1, 988, 138, 2, 2, image_angle, image_blend, image_alpha);
}
