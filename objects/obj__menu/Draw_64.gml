/*draw_set_font(fnt_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

#region //botão de voltar e jogar
for(var i = 0; i <= array_length(menu) -1; i++){
	
var _hgui = display_get_gui_width();
var _vgui = display_get_gui_height();

var _vletra = string_height("A") *12;
var _hletra = string_width(menu[i]);

var x1 = _hgui /10 - _hletra /2;
var y1 = _vgui /7 - _vletra /12 + _vletra *i;

var x2 = _hgui /10 + _hletra /2;
var y2 = _vgui /7 + _vletra /12 + _vletra *i;

if(point_in_rectangle(_mx, _my, x1, y1, x2, y2)){
	escala[i] = lerp(escala[i], 1.3, 0.3);
	image_alpha = 1;
	
	if(mouse_check_button_pressed(mb_left)){
		switch menu[i]{
			case menu[0]:
			room_goto(room_menu);
			break;

		}
	}
}

else{
	escala[i] = lerp(escala[i], 1, 0.4);
	image_alpha = 0.80
}


var cor = c_white;
draw_text_transformed_color(_hgui /10, _vgui /7 + _vletra * i, menu[i], escala[i], escala[i], 0, cor, cor, cor, cor, image_alpha);
}
#endregion



var _hgui = display_get_gui_width();
var _vgui = display_get_gui_height();

var _vletra = string_height("A") *12;
var _hletra = string_width(menu);

var x1 = _hgui /10 - _hletra /2;
var y1 = _vgui /7 - _vletra /12 + _vletra *i;

var x2 = _hgui /10 + _hletra /2;
var y2 = _vgui /7 + _vletra /12 + _vletra *i;

if(point_in_rectangle(_mx, _my, x1, y1, x2, y2)){
	escala = lerp(escala, 1.3, 0.3);
	image_alpha = 1;
	
	if(mouse_check_button_pressed(mb_left)){
		switch menu[i]{
			case menu[0]:
			room_goto(room_menu);
			break;
		}
	}
}

else{
	escala = lerp(escala, 1, 0.4);
	image_alpha = 0.80
}*/


var cor = c_white;
draw_text_transformed_color(_hgui /10, _vgui /7 + _vletra * i, menu[i], escala[i], escala[i], 0, cor, cor, cor, cor, image_alpha);
}