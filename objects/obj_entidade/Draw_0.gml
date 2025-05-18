draw_self();

if (variable_instance_exists(id, "colidindo") && colidindo) {
    draw_sprite_ext(spr_efeito_atack, image_index, x , cordenada, image_xscale, image_yscale, angulo, cor, image_alpha);
}

draw_text(x + 22, y - 10, vida);
draw_text(x - 30, y - 10, dano);
