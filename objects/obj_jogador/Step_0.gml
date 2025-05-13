if(mouse_check_button_pressed(mb_right)){
	usar_carta();
	comprar_carta(2);
	atualizar_mao();
}

if(keyboard_check_pressed(vk_space)){
	global.vida --;
}

if(global.vida == 0){
	game_restart();
	reset_var();
}

if(global.vida_inimigo == 0){
	reset_var();
	room_goto(room_vitoria);
}