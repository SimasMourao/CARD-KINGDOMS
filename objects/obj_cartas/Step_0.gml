mouse_sobre = position_meeting(mouse_x, mouse_y, id);
clique = mouse_check_button_released(mb_left);


var _outra_carta = position_meeting(mouse_x, mouse_y, obj_cartas);
var _corredor = position_meeting(mouse_x, mouse_y, obj_corredor);
var escala_alvo = 0;

if(global.pause == false){
	if(mouse_sobre){
		
		escala = 2.5;
		escala_alvo = .9
		
		if(img < 8){
			img += .4;
		}
	
		if(clique){
			global.carta_atual = id;
			show_debug_message(global.carta_atual);
		}
		
	}
	else{
		escala = 2;
		
		escala_alvo = .6;
		img = 0;
		
		if(clique && !_outra_carta && !_corredor){
			global.carta_atual = noone;
		}
	}
	
	if(global.carta_atual == id){
		opacidade = 1;
		escala = 2.5;
		escala_alvo = .9; 
	}
	else{
		opacidade = .7
		escala = 2;
		escala_alvo = .6;
	}
	
	image_xscale = lerp(image_xscale, escala, 0.4);
	image_yscale = lerp(image_yscale, escala, 0.4);
	escala_tipo = lerp(escala_tipo, escala_alvo, 0.4);
	image_alpha = lerp(image_alpha, opacidade, 0.4);
	
}
