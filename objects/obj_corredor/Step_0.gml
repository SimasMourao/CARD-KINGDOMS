mouse_sobre = position_meeting(mouse_x, mouse_y, id);
clique = mouse_check_button_released(mb_left);

if(global.vez_jogador == true){
	var _outro_corredor = position_meeting(mouse_x, mouse_y, obj_corredor); 
	if(mouse_sobre){
		if(clique){
			global.corredor_atual = id;
			if(global.carta_atual != noone){
				acao = global.carta_atual.carta.acao;
			}
			if(is_method(acao)){
				acao(x, y + 225,"superior");
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
	escala = 1.05;
	opacidade = 1;
}

else{
	opacidade = .8;
	escala = 1;
}

image_alpha = lerp(image_alpha, opacidade, .4);
image_xscale = lerp(image_xscale, escala, .4);
image_yscale = lerp(image_yscale, escala, .4);