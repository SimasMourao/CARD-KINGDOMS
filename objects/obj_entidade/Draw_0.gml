draw_self();

if (variable_instance_exists(id, "colidindo") && colidindo) {
    draw_sprite_ext(spr_efeito_atack, image_index, x , cordenada, image_xscale, image_yscale, angulo, cor, image_alpha);
}

draw_text(x + 15, y - 20, vida);
draw_text(x - 15, y - 20, dano);

draw_text(60, 40, global.contagem_colisao);