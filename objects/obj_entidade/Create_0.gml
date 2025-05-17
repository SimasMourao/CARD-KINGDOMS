spd = 1;
espera = 50;
vspd = spd;
colidindo = false;
cor = 0;
cordenada = 0;
angulo = 0;
obj_colide = obj_entidade;
vida = 0;
dano = 0;
adcao_colisao = 0;

if (place_meeting(x, y, obj_corredor)) {
    array_push(global.contagem_colisao, id);
}