mouse_sobre = position_meeting(mouse_x, mouse_y, id);

if(mouse_sobre){
	opacidade = 1;
	escala = 1.8;
}

else{
	opacidade = 0.5;
	escala = 1;
}

image_alpha = lerp(image_alpha, opacidade, 0.1);
image_xscale = lerp(image_xscale, escala, 0.4);
image_yscale = lerp(image_yscale, escala, 0.4);