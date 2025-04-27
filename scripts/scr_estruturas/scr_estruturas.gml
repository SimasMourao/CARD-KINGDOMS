#region
	enum MONSTROS_DE_LAMA
	{
		BLOMA,
		LASO,
		GARRO,
		URMA
	}

#endregion

function criar_carta(_fundo = 0, _nome = "", _moldura_nome = 0, _desenho_monstro = 0, _tipo = 0, _poder = 0, _tipo_vida = 0, _vida = 1, _moldura = 0) constructor{
	
	fundo			=_fundo;
	moludura_nome	=_moldura_nome
	nome			=_nome;
	monstro			=_desenho_monstro;
	tipo			=_tipo
	poder			=	_poder;
	tipo_vida		=_tipo_vida
	vida			=_vida;
	moldura			=_moldura;
}