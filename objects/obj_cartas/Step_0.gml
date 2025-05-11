mouse_sobre = position_meeting(mouse_x, mouse_y, id);
clique = mouse_check_button_released(mb_left);

#region

	var escala_alvo = 0;

	if(mouse_sobre){
	
		escala_alvo = .9
		opacidade = 1;
	
		if(img < 8){
		
			img += .4;
		}
		
		if(clique){
			image_blend = c_red;
			
		}
		
	}
	else{
		escala_alvo = .6;
		opacidade = 0.8
		img = 0;
		
		if(clique){
			image_blend = c_white;
			
		}
	}
	
	aumentar_tamanho(2, 2.5, 0.4);
	escala_tipo = lerp(escala_tipo, escala_alvo, 0.4);
	image_alpha = lerp(image_alpha, opacidade, 0.4);
#endregion