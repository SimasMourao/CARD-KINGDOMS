function oscilar_opacidade(opacidade_min = 0, opacidade_max = 1, veloc = 0){
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
	draw_sprite_ext(spr_reinos, carta.monstro, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	//draw_sprite_ext(spr_reinos_1, carta.monstro, x, y, escala_tipo*1.5, escala_tipo*1.5, image_angle, image_blend, image_alpha);

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

#region //baralho
function carta_lama(){
	//bloma
	var nome0 = "bloma", moldura0 = 0, tipo0 = 0, tipo_vida0 = 4, poder0 = 1, vida0 = 3, monstro0 = MONSTROS.BLOMA;
	var bloma = new criar_carta(0, nome0, moldura0, monstro0, tipo0, poder0, tipo_vida0, vida0, 0);
	
	//laso
	var nome1 = "laso", moldura1 = 0, tipo1 = 0, tipo_vida1 = 4, poder1 = 1, vida1 = 4, monstro1 =  MONSTROS.LASO;
	var laso = new criar_carta(0, nome1, moldura1, monstro1, tipo1, poder1, tipo_vida1, vida1, 0);
	
	//garro
	var nome2 = "garro", moldura2 = 0, tipo2 = 0, tipo_vida2 = 4, poder2 = 4, vida2 = 6, monstro2 =  MONSTROS.GARRO;
	var garro = new criar_carta(0, nome2, moldura2, monstro2, tipo2, poder2, tipo_vida2, vida2, 0);
	
	//urma
	var nome3 = "urma", moldura3 = 0, tipo3 = 0, tipo_vida3 = 4, poder3 = 2, vida3 = 3, monstro3 =  MONSTROS.URMA;
	var urma = new criar_carta(0, nome3, moldura3, monstro3, tipo3, poder3, tipo_vida3, vida3, 0);
	
	array_push(global.baralho_lama, bloma, garro, laso, urma);

}

function carta_flor(){
	//bloma
	var nome0 = "semente", moldura0 = 0, tipo0 = 0, tipo_vida0 = 4, poder0 = 1, vida0 = 3, monstro0 = MONSTROS.SEMENTE;
	var semente = new criar_carta(1, nome0, moldura0, monstro0, tipo0, poder0, tipo_vida0, vida0, 0);
	
	//laso
	var nome1 = "titereiro", moldura1 = 0, tipo1 = 0, tipo_vida1 = 4, poder1 = 0.5, vida1 = 5, monstro1 =  MONSTROS.TITEREIRO;
	var titere = new criar_carta(1, nome1, moldura1, monstro1, tipo1, poder1, tipo_vida1, vida1, 0);
	
	//garro
	var nome2 = "tronco", moldura2 = 0, tipo2 = 0, tipo_vida2 = 4, poder2 = 0, vida2 = 8, monstro2 =  MONSTROS.TRONCO;
	var tronco = new criar_carta(1, nome2, moldura2, monstro2, tipo2, poder2, tipo_vida2, vida2, 0);
	
	//urma
	var nome3 = "vespa", moldura3 = 0, tipo3 = 0, tipo_vida3 = 4, poder3 = 4, vida3 = 2, monstro3 =  MONSTROS.VESPA;
	var vespa = new criar_carta(1, nome3, moldura3, monstro3, tipo3, poder3, tipo_vida3, vida3, 0);
	
	array_push(global.baralho_flores, semente, titere, tronco, vespa);

}
#endregion

randomize();
function criar_mao(){
	
	for(var i = 0; i <= 2; i++){
		var atual = irandom(3)
		array_push(global.mao, global.baralho[atual]);
	}
}

function usar_carta(){
	for(var i = 0; i <= array_length(global.mao) -1; i++){
		array_push(global.cemiterio, global.mao[i]);
	}
	global.mao = [];
}

function comprar_carta(qtd_cartas){
	if(array_length(global.baralho) <= 1){
		for(var i = 0; i <= array_length(global.cemiterio) -1; i++){
			array_push(global.baralho, global.cemiterio[i]);
		}
		global.cemiterio = [];
		
	}
	
	for(var i= 0; i < qtd_cartas; i++){
		if(array_length(global.baralho) > 0){
			var indice = irandom(array_length(global.baralho) -1)
			var carta = global.baralho[indice];
			array_push(global.mao, carta);
			array_delete(global.baralho, indice, 1);
		}
	}
	
}

function atualizar_mao() {
	// Destruir todas as cartas da mão na tela
	with (obj_cartas) {
		instance_destroy();
	}
	
	// Criar novas cartas com base na global.mao
	for (var i = 0; i < array_length(global.mao); i++) {
		var _carta = instance_create_layer(660 + 110 * i, y + 640, "Instances", obj_cartas);
		_carta.carta = global.mao[i];
	}
}



function reset_var(){
	global.pause = false;

	global.vez_jogador = true;
	
	global.carta_atual = noone;
	global.corredor_atual = noone;

	global.bar_select = false;

	global.carta_select = false;
	global.corrdor_select = false;

	global.baralho = [];
	global.baralho_inimigo = [];

	global.mao = [];
	global.mao_inimigo = [];

	global.vida = 3;
	global.vida_inimigo = 3;

	global.baralho_lama = [];
	global.baralho_flores = [];

	global.cemiterio = [];
}