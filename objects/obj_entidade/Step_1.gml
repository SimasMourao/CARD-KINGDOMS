if(place_meeting(x, y, obj_chegada)){
	instance_destroy();

}

if(place_meeting(x, y,obj_colide)){
	vspd = 0;
	colidindo = true;

}

else{
	colidindo = false;
	vspd = spd;
}

if(vspd == 0){
	sprite_index = spr_soldade_atack;
}

else{
	sprite_index = spr_soldade_walk;
}