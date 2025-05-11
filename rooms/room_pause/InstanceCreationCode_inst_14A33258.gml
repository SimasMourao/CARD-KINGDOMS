acao = function(){
	reset_var();
	room_goto(room_baralho);
}

icone = function(){
	draw_sprite_ext(spr_pause, 1, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}