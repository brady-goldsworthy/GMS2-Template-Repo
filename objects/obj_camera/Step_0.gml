///@description Setting zoom in/out based on input

if keyboard_check_pressed(ord("K")) { 
	log_debug("Zooming in");
	cam_scale = min(cam_scale + 1, CAM_ZOOM_MAX);
	// update_resolution();
}
else if keyboard_check_pressed(ord("L")) {
	log_debug("Zooming out");
	cam_scale = max(cam_scale - 1, CAM_ZOOM_MIN);
	// update_resolution();
}
