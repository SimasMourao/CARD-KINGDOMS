function oscilar_opacidade(opacidade_min = 0, opacidade_max = 1, veloc = 0,){
	var onda = sin(current_time * veloc);
	
	onda = (onda + 0.5/ 1);
	
	image_alpha = lerp(opacidade_max, opacidade_min, onda);
}