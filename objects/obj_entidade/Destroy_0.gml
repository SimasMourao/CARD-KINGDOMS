	for(var i = array_length(global.contagem_colisao) -1; i >= 0; i--){
		if(global.contagem_colisao[i] == id){
			array_delete(global.contagem_colisao, i, 1);
		}
	}