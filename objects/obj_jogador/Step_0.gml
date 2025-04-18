if(keyboard_check_pressed(vk_space)){
	global.vida --;
}

if(global.vida == 0){
	game_restart();
	global.vida = 3;
}
