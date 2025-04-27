function oscilar_opacidade(opacidade_min = 0, opacidade_max = 1, veloc = 0,){
	var onda = sin(current_time * veloc);
	
	onda = (onda + 0.5/ 1);
	
	image_alpha = lerp(opacidade_max, opacidade_min, onda);
}

function aumentar_tamanho(escalamin = 1, escalamax = 1, veloc_aument_escala = 1){
	var mouse_sobre = position_meeting(mouse_x, mouse_y, id);
	var escala = 0;
	
	if(mouse_sobre){
		escala = escalamax;
	}

	else{
		escala = escalamin;
	}

	image_xscale = lerp(image_xscale, escala, veloc_aument_escala);
	image_yscale = lerp(image_yscale, escala, veloc_aument_escala);
}

function desenhando_cartas(){

	draw_sprite_ext(spr_fundo, carta.fundo, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	
	//moldura
	draw_sprite_ext(spr_moldura, carta.moldura, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

	draw_sprite_ext(spr_tipo, carta.tipo, x - 16, y + 28, escala_tipo, escala_tipo, image_angle, image_blend, image_alpha);
	//vida
	draw_sprite_ext(spr_tipo, carta.tipo_vida, x + 18, y + 28, escala_tipo, escala_tipo, image_angle, image_blend, image_alpha);

	draw_set_font(fnt_txt_g);


	draw_text_transformed_color(x - 19, y + 9,carta.poder, escala_tipo, escala_tipo, image_angle, c_white, c_white, c_white, c_white,image_alpha);

	draw_text_transformed_color(x + 15, y + 9, carta.vida, escala_tipo, escala_tipo, image_angle, c_white, c_white, c_white, c_white,image_alpha);

	draw_set_font(-1)
	//desenho_monstro
	draw_sprite_ext(spr_reino_lama, carta.monstro, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

	if(mouse_sobre){
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		
		//placa nome
		draw_sprite_ext(spr_nome, carta.moludura_nome, x, y - 25 * image_xscale, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
		
		//nome
		draw_text_transformed_color(x, y - 25 * image_yscale, carta.nome, escala_tipo, escala_tipo, image_angle, c_black, c_black, c_black, c_black, image_alpha);
	
		draw_set_halign(-1);
		draw_set_valign(-1);
	
		draw_sprite_ext(spr_efeito, img, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	}

}

function carta_lama(){
	//bloma
	var nome0 = "bloma", moldura0 = 0, tipo0 = 0, tipo_vida0 = 4, poder0 = 1, vida0 = 3, monstro0 = MONSTROS_DE_LAMA.BLOMA;
	var bloma = new criar_carta(0, nome0, moldura0, tipo0, tipo_vida0, poder0, vida0, monstro0);
	
	//laso
	var nome1 = "laso", moldura1 = 0, tipo1 = 0, tipo_vida1 = 4, poder1 = 1, vida1 = 4, monstro1 =  MONSTROS_DE_LAMA.LASO;
	var laso = new criar_carta(0, nome1, moldura1, tipo1, tipo_vida1, poder1, vida1, monstro1);
	
	//garro
	var nome2 = "garro", moldura2 = 0, tipo2 = 0, tipo_vida2 = 4, poder2 = 3, vida2 = 6, monstro2 =  MONSTROS_DE_LAMA.GARRO;
	var garro = new criar_carta(0, nome2, moldura2, tipo2, tipo_vida2, poder2, vida2, monstro2);
	
	//urma
	var nome3 = "urma", moldura3 = 0, tipo3 = 1, tipo_vida3 = 4, poder3 = 2, vida3 = 3, monstro3 =  MONSTROS_DE_LAMA.URMA;
	var urma = new criar_carta(0, nome3, moldura3, tipo3, tipo_vida3, poder3, vida3, monstro3);
	
	array_push(global.baralho_lama, bloma, garro, laso, urma);

}

function criar_mao(){
	
}

function reset_var(){
	global.bar_select = false;
	global.baralho = [];
	global.baralho_inimigo = [];
	global.vida = 3;
}