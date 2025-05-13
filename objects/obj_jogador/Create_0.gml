escala_coracao = 2;


criar_mao();
for(var i = 0; i < 2; i++){
	var _carta = instance_create_layer( 660 + 110 *i, y + 640, layer, obj_cartas);

	_carta.carta = global.mao[i];
}
