if (vida == 0 && variable_instance_exists(id, "carta")) {
    vida = carta.vida;
    dano = carta.poder;
    
    show_debug_message("carta usada: " + carta.nome + ", vida: " + string(carta.vida) + ", poder: " + string(carta.poder));
}


if(place_meeting(x, y, obj_chegada)){
	instance_create_layer(x, y, "jogador_inimigo",obj_de_morte);
	instance_destroy();
}

if(place_meeting(x, y,obj_colide)){
	vspd = 0;
	sprite_index = spr_soldade_atack;
	colidindo = true;

}

else{
	colidindo = false;
	vspd = spd;
	sprite_index = spr_soldade_walk;
}

if(global.pause == true){
	sprite_index = spr_soldade_idle;
}
