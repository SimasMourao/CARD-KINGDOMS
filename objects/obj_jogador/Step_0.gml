mouse_sobre = (position_meeting(mouse_x, mouse_y, obj_baralho));
clique = mouse_check_button_released(mb_left);

if(global.pause == false){
	tempo_atual --;

	if(tempo_atual < 0 && global.vez_jogador = false){
		tempo_atual = tempo
		global.vez_jogador = true;
	}
	else if(tempo_atual < 0 && global.vez_jogador = true){
		tempo_atual = tempo
		global.vez_jogador = false;		
	}

	if(global.vez_jogador == true){
		if(mouse_sobre){
			if(clique){
				if(global.cartas_usadas == 2){
				comprar_carta(2);
				atualizar_mao();
				global.cartas_usadas = 0;
				}
			}
		}

	}

	if(keyboard_check_pressed(vk_space)){
		global.vida --;
	}

	if(global.vida == 0){
		game_restart();
		room_goto(room_menu);
		reset_var();
	}

	if(global.vida_inimigo == 0){
		transicao --;
		if( transicao == 0){
			reset_var();
			room_goto(room_vitoria);
		}
	}
}