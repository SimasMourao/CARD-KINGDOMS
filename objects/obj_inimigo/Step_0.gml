if(global.pause == false){
	if(global.vez_jogador != true){
		tempo_atual --;
		if(parar == false){
		tempo_turno = /*random_range(20, 160)*/irandom_range(50, 110);
		parar = true;
		}
		
		if(tempo_atual == tempo_turno){
			tempo_atual = tempo;

			parar = false;
			inimigo_usar_cartas();
			tempo_turno = 0;
		}
	}
}
