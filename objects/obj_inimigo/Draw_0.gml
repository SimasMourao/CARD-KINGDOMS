draw_self();
for(var i = 0; i < array_length(global.baralho_inimigo); i++){
	if(global.baralho_inimigo [i] == [global.baralho_flores[i]]){
		draw_sprite_ext(spr_verso, 1,  660 + 110 *i, 55, 1.8, 1.8, 0,  c_white, .95);
	
	}
	
	if(global.baralho_inimigo [i] == [global.baralho_lama[i]]){
		draw_sprite_ext(spr_verso, 0,  660 + 110 *i, 55, 1.8, 1.8, 0,  c_white, .95);
	}
}