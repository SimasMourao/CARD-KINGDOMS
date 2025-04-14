aumentar_tamanho(4, 4.5, 0.4);

var escala_alvo = 0;
mouse_sobre = position_meeting(mouse_x, mouse_y, id);
if(mouse_sobre){
	escala_alvo = 1.8
	opacidade = 1;
	if(img < 8){
		img += .4;
	}
}
else{
	escala_alvo = 1.5;
	opacidade = 0.8
	img = 0;
}
escala_tipo = lerp(escala_tipo, escala_alvo, 0.4);
image_alpha = lerp(image_alpha, opacidade, 0.4);