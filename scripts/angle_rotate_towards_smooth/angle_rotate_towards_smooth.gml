/// @description angle_rotate_towards_smooth(start,end,change_percentage,[min_snap],[direction])
/// @param start
/// @param end
/// @param change_percentage
/// @param [min_snap]
/// @param [direction] 
function angle_rotate_towards_smooth() {
	//Returns a new angle rotated towards the target direction the given percentage.
	//Will snap to the target angle if within the given, optional snap range.
	//direction: 0 for shortest direction, -1 to force clockwise, 1 to force counter-clockwise
	var _start = argument[0],
	    _target = argument[1],
	    _change = clamp(abs(argument[2]),0,1),
	    _min = argument_count > 3 ? argument[3] : math_get_epsilon(), 
   
	    _remaining = angle_difference(_start, _target),
	    _direction = argument_count > 4 ? (sign(-argument[4]) == 0 ? sign(_remaining) : sign(-argument[4])) : sign(_remaining),
   
	    _same_dir = sign(_remaining) == _direction,
	    _travel_dist = _same_dir ? _remaining*_change : (abs(_remaining)+180) * _change;

	return abs(_travel_dist)<_min && _same_dir ? _target : _start-(abs(_travel_dist)*_direction);
}
