mouse_sobre = position_meeting(mouse_x, mouse_y, id);
clique = mouse_check_button_released(mb_left);

if(global.pause == false){

	if(global.vez_jogador == true){
		var _outro_corredor = position_meeting(mouse_x, mouse_y, obj_corredor); 
		if(mouse_sobre){
			if(clique){
				if(global.carta_atual != noone){
					acao = global.carta_atual.carta.acao;
					global.corredor_atual = id;
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
	if(global.corredor_atual == id){
		opacidade = 1;
	}

	else{
		opacidade = .5;
	}

	image_alpha = lerp(image_alpha, opacidade, .4);

}

