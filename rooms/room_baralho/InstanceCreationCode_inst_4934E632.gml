icone = function(){
	draw_sprite_ext(spr_icone_bar, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

acao = function(){
	global.bar_select = true;
	//array_copy, copia os valores de um vetor para o outro
	array_copy(global.baralho_inimigo, 0, global.baralho_lama, 0, array_length(global.baralho_lama));
	array_copy(global.baralho, 0, global.baralho_flores, 0, array_length(global.baralho_flores));
}