acao = function(){
	global.pause = true;
	global.carta_atual = noone;
	pause();
}

mover = function(){
	
	if(global.pause == true){
		x = 33;
		y = -64;
	}
	else{
		x = 60;
		y = 64;
	}
}
