if(global.pause == false){
	image_blend = c_red;
	image_angle = 180;
	y += vspd;
	cor = c_red;
	cordenada = y + 25;
	angulo = 180;
	obj_colide = obj_soldado;
		adcao_colisao = 10;

	if(place_meeting(x, y, obj_chegada)){
		global.vida --;
	}
}

