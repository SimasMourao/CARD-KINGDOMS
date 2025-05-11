x = mouse_x;
y = mouse_y;

if (mouse_check_button_pressed(mb_left)){
	image_index = 1;
	escala = 0.9;

}

if (mouse_check_button_released(mb_left)){
	image_index = 0;
	escala = 1;
}

image_xscale = lerp(image_xscale, escala, .5);
image_yscale = lerp(image_yscale, escala, .5);