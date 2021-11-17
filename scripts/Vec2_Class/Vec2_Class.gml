/// Returns a STRUCT. Have to be called with NEW
function vec2(_x, _y) constructor{
	x = _x;
	y = _y;
}

/// INHERENTS vec2 
function vec2_color(_x, _y) : vec2(_x, _y) constructor{
	c = choose(	c_white, c_aqua, c_blue, 
							c_fuchsia, c_purple, c_lime, 
							c_navy, c_green, c_orange,
							c_yellow, c_silver, c_teal);	
}

/// STATIC EMPTY FUNCTION 
function do_nothing(){ }