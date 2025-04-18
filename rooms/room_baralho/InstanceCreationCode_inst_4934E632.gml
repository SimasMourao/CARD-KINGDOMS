icone = function(){
	draw_sprite_ext(spr_icone_bar, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

acao = function(){
	global.bar_select = true;
	
	array_push(global.baralho, global.baralho_flores);
	
	array_push(global.baralho_inimigo, global.baralho_lama);
}