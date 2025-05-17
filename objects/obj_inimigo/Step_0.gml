if(global.pause == false){
	if(global.vez_jogador != true){
		tempo_atual --;
		if(parar == false){
		tempo_turno = /*random_range(20, 160)*/irandom(110);
		parar = true;
		}
		
		if(tempo_atual == tempo_turno){
			tempo_atual = tempo;
			tempo_turno = 0;
			parar = false;
			inimigo_usar_cartas();
		}
	}
}
