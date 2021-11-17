/// @description INPUTS

if(keyboard_check_pressed(ord("R"))) 
	room_restart();

if(mouse_check_button_pressed(mb_left)){
	add_point_callback(mouse_x,mouse_y);
}
	
if(keyboard_check_pressed(vk_space)){
	ds_list_shuffle(vectors);
}
