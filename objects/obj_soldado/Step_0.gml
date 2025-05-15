y -= vspd;
cor = c_white;
cordenada = y - 25;
angulo = 0;
obj_colide = obj_soldado_inimigo;

if(place_meeting(x, y, obj_chegada)){
	global.vida_inimigo--;
}