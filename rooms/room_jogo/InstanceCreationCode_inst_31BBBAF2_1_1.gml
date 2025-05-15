acao = function(){
	global.pause = true;
	global.carta_atual = noone;
	global.corredor_atual = noone;
	room_goto(room_pause);
}