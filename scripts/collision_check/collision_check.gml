function collision_check(_x, _y, _obj, _layer) {
	var _col = instance_place(_x, _y, _obj);
	//var _tile_col = tile_meeting_precise(_x, _y, _layer);
	var _tile_col = false;

	// if _col log_debug("Collided with object");
	// if _tile_col log_debug("Collided with tile layer");
	
	//Return true if there's an object or tile collision 
	return (_col != noone and _col.can_collide) or _tile_col;
	
}