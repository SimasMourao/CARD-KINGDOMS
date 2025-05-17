tem_lama = false;
tem_flores = false;
tempo = 165;
transicao = 50;
tempo_atual = tempo

reset_tempo = function(){
	tempo_atual = tempo
}

for(var i = 0; i < array_length(global.baralho); i++){
	if(global.baralho[i] == global.baralho_lama[i]){
		tem_lama = true;
		tem_flores = false;
	}
	else if(global.baralho[i] == global.baralho_flores[i]){
		tem_lama = false;
		tem_flores = true;
	}
}

for(var i = 0; i < array_length(global.baralho_inimigo); i++){
	if(global.baralho_inimigo[i] == global.baralho_lama[i]){
		tem_lama = true;
		tem_flores = false;
	}
	else if(global.baralho_inimigo[i] == global.baralho_flores[i]){
		tem_lama = false;
		tem_flores = true;
	}
}

escala_coracao = 2;
mouse_sobre = false;
clique = false;

criar_mao();
for(var i = 0; i < 2; i++){
	var _carta = instance_create_layer( 660 + 110 *i, y + 640, layer, obj_cartas);

	_carta.carta = global.mao[i];
}

