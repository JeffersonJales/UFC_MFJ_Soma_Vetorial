/// @description INIT LIST

/// SETUP POINTS AND VECTORS
points = ds_list_create();
vectors = ds_list_create();

/// DRAWING STUFF
circle_size = 3;
arrow_size = 20;

draw_vectors = do_nothing;
draw_vectors_simple = function(){
	var i = 0, vector, pos = points[| 0];
	var _init_x = pos.x;
	var _init_y = pos.y;
	
	draw_set_color(c_yellow);

	repeat(ds_list_size(vectors)){
		
		draw_circle(_init_x, _init_y, circle_size, true);

		vector = vectors[| i++];
		draw_set_color(vector.c);
		
		draw_arrow(_init_x, _init_y, _init_x + vector.x, _init_y + vector.y, arrow_size);
		_init_x += vector.x;
		_init_y += vector.y;
			
		draw_set_color(c_white);

	}
	
	draw_set_color(c_red);
	draw_arrow(pos.x, pos.y, _init_x, _init_y, arrow_size);
	
	draw_set_color(c_white);
}

draw_points = function(){
	var i = 0, point; 
	repeat(ds_list_size(points)){
		point = points[| i++];
		draw_circle(point.x, point.y, circle_size, true);	
	}
}

/// CALLED FUNCTIONS WHEN INPUT IN
add_initial_point = function(pos_x, pos_y){
	ds_list_add(points, new vec2(pos_x, pos_y));
	add_point_callback = add_point_create_vector;
	draw_vectors = draw_vectors_simple;
}

add_point_create_vector = function(pos_x, pos_y){
	var _point = new vec2(pos_x, pos_y);
	var _last_point = points[| ds_list_size(points) - 1];
	var _vector = new vec2_color(pos_x - _last_point.x, pos_y - _last_point.y);
	
	ds_list_add(vectors, _vector);
	ds_list_add(points, _point);
	draw_points = do_nothing;
}

add_point_callback = add_initial_point;

