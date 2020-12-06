///@description Moving camera

camera_set_view_size(VIEW, view_width, view_height);

#region Follow Tracking Object
		
var zoom_spd = 0.05;
		
//lerping the camera back to normal zoom
view_height = lerp(view_height, 1080 div cam_scale, zoom_spd);
view_width = round(view_height*aspect_ratio);
		
//Logic to track player object
if(instance_exists(target_obj)) {
	var _x = 0;
	var _y = 0;
	
	var shake_x = random_range(-screen_shake, screen_shake);
	var shake_y = random_range(-screen_shake, screen_shake);
	
	// clamping x value between 0 and right edge of room
	_x = clamp(target_obj.x - VIEW_W/2, -100000,  100000); 
	
	// clamping y value between 0 and bottom edge of room
	_y = clamp(target_obj.y - VIEW_H/2, -100000,  100000);
	
	//Used in smoothly transitioning camera back towards player
	var _current_x = camera_get_view_x(VIEW);
	var _current_y = camera_get_view_y(VIEW);
	
	var _spd = .1; //Camera speed
	
	//var shake_x = random_range(-screen_shake, screen_shake);
	//var shake_y = random_range(-screen_shake, screen_shake);
	
	var lerp_x = lerp(_current_x, _x, _spd) + shake_x;
	var lerp_y = lerp(_current_y, _y, _spd) + shake_y;
	
	//Move view towards player by a percentage
	camera_set_view_pos(VIEW, lerp_x, lerp_y);
	
	screen_shake *= SHAKE_DECAY;
	
}

#endregion

log_debug("Camera x: ", VIEW_X, " - Camera y: ", VIEW_Y);