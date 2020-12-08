///@description tile_meeting_precise(x,y,layer)
///@param x
///@param y
///@param layer
function tile_meeting_precise(_x, _y, _layer) {

    var _tm = layer_tilemap_get_id(_layer);
    var _checker = obj_precise_tile_checker;

	if(!instance_exists(_checker)) instance_create_depth(0,0,0,_checker); 

	var _x1 = tilemap_get_cell_x_at_pixel(_tm, bbox_left + (argument0 - _x), _y),
	    _y1 = tilemap_get_cell_y_at_pixel(_tm, _x, bbox_top + (argument1 - _y)),
	    _x2 = tilemap_get_cell_x_at_pixel(_tm, bbox_right + (argument0 - _x), _y),
	    _y2 = tilemap_get_cell_y_at_pixel(_tm, _x, bbox_bottom + (argument1 - _y));

	for(var _xx = _x1; _xx <= _x2; _xx++){
		for(var _yy = _y1; _yy <= _y2; _yy++){
		    var _tile = tile_get_index(tilemap_get(_tm, _xx, _yy));
			if(_tile) {
				if(_tile == 1) return true;

				_checker.x = _xx * tilemap_get_tile_width(_tm);
				_checker.y = _yy * tilemap_get_tile_height(_tm);
				_checker.image_index = _tile;

				if place_meeting(_x, _y,_checker) {
					return true;
				}
			}
		}
	}

	return false;
}