acao = function(){
	global.pause = false;
	global.bar_select = false;
	global.baralho = [];
	global.baralho_inimigo = [];
	room_goto(room_baralho);
}

icone = function(){
	draw_sprite_ext(spr_pause, 1, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}