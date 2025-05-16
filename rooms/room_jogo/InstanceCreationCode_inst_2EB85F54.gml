mover = function (){
	if(global.pause == true){
		x = 723;
		y = 272;
		aumentar_tamanho(4, 4.4, 0.2);
		
	}
	
	else{
		x = 33;
		y = -64;
	}
}

acao = function(){
	global.pause = false;
}


