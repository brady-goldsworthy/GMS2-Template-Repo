///@function obj_is_in_radius
///@param radius
///@param obj
function obj_is_in_radius(_obj, _rad) {

	var _col = collision_circle(x, y, _rad, _obj, false, true)
	if _col == noone {
		return false	
	}
	else return true
}