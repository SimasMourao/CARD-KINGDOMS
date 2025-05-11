aumentar_tamanho(1, 1.05, 0.4);

var mouse_sobre, clique = false;
mouse_sobre = position_meeting(mouse_x, mouse_y, id);
clique = mouse_check_button_released(mb_left);

if(mouse_sobre){
	if(clique){
		image_blend = c_red;
	}
}

else{
	if(clique){
		image_blend = c_white;
	}
}