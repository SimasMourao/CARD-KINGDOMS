mouse_sobre = position_meeting(mouse_x, mouse_y, id);
clique = mouse_check_button_released(mb_left);
var _outro_corredor = position_meeting(mouse_x, mouse_y, obj_corredor); 
if(mouse_sobre){
	escala = 1.05;
	
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
	escala = 1;
	if(clique && !_outro_corredor){
		global.corredor_atual = noone;
	}
}

if(global.corredor_atual == id){
	escala = 1.05;
	image_blend = c_red;
}

else{
	image_blend = c_white;
	escala = 1;
}

image_xscale = lerp(image_xscale, escala, .4);
image_yscale = lerp(image_yscale, escala, .4);


if (place_meeting(x, y, obj_soldado)) {
    contagem += 1;
}


if (!place_meeting(x, y, obj_soldado)) {
        contagem = 0;
    }
custo = contagem;