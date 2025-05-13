#region
	enum MONSTROS
	{
		BLOMA,
		LASO,
		GARRO,
		URMA,
		SEMENTE,
		TITEREIRO,
		TRONCO,
		VESPA
	}
	
#endregion

function criar_carta(_fundo = 0, _nome = "", _moldura_nome = 0, _desenho_monstro = 0, _tipo = 0, _poder = 0, _tipo_vida = 0, _vida = 1, _moldura = 0) constructor{
	static _id		=0; 
	meu_id			=_id;
	fundo			=_fundo;
	moludura_nome	=_moldura_nome
	nome			=_nome;
	monstro			=_desenho_monstro;
	tipo			=_tipo
	poder			=	_poder;
	tipo_vida		=_tipo_vida
	vida			=_vida;
	moldura			=_moldura;
	
	_id ++;
	
	acao = function(_x, _y, _layer){
		var _meio = sprite_get_width(spr_corredor)/24;
		show_debug_message("otoaqui");
		instance_create_layer( _x + _meio, _y, _layer, obj_soldado)
	}
}