mouse_sobre = position_meeting(mouse_x, mouse_y, id);
clique = mouse_check_button_released(mb_left);

if(mouse_sobre){
	if(clique){
		escala = 1.8;
		opacidade = 1;
	}
}

else{
	if(clique){
		escala = 1;
		opacidade = 0.5;
	}
}

image_alpha = lerp(image_alpha, opacidade, 0.1);
image_xscale = lerp(image_xscale, escala, 0.4);
image_yscale = lerp(image_yscale, escala, 0.4);