if(global.pause == false){
	y -= vspd;
	cor = c_white;
	cordenada = y - 20;
	angulo = 0;
	obj_colide = obj_soldado_inimigo;
	adcao_colisao = -10;

	if(place_meeting(x, y, obj_chegada)){
		global.vida_inimigo--;
	}
	
}

	if(keyboard_check_pressed(vk_space)){
		instance_destroy(id);
	}