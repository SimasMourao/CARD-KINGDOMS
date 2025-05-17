mouse_sobre = position_meeting(mouse_x, mouse_y, obj_corredor_entidade);
clique = mouse_check_button_released(mb_left);

if(global.pause == false){
	if(global.vez_jogador == true){
		if(mouse_sobre){
			if(clique){
			
				if(array_length(global.mao) = 1){
					global.carta_atual = noone
				}
				else{
					global.corredor_atual = id;
				}
				if(global.carta_atual != noone){
					acao = global.carta_atual.carta.acao;
				}
				if(is_method(acao)){
					acao(x, y + 225,"jogador_inimigo");
				}
			}
		}

		else{
			if(clique && !_outro_corredor){
				global.corredor_atual = noone;
			}
		}
	}
}

if(global.corredor_atual == id){

	opacidade = 1;
}

else{
	opacidade = .5;

}

image_alpha = lerp(image_alpha, opacidade, .4);
