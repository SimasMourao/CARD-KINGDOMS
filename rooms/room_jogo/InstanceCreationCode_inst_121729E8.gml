mover = function (){
	if(global.pause == true){
		x = 723;
		y = 400;
		aumentar_tamanho(4, 4.4, 0.2);
		
	}
	
	else{
		x = 90;
		y = -64;
	}
}

acao = function(){
	reset_var();
	room_goto(room_menu);
}

