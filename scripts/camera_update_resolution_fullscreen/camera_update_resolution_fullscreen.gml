function camera_update_resolution_fullscreen() {
	with obj_camera {
	    //Default camera zoom level
	    aspect_ratio = display_get_width()/display_get_height();
    
	    default_view_h = 1080 / cam_scale; //Ideal view height
	    default_view_w = round(default_view_h * aspect_ratio); //Set width based on ideal height and aspect ratio
     
	    //Rounding resolution up in case of odd numbers
	    if(default_view_w & 1) default_view_w++;
	    if(default_view_h & 1) default_view_h++;
    
	    //Not completely sure what this is doing
	    max_window_scale = min(floor(display_get_width()/default_view_w),floor(display_get_height()/default_view_h));
    
	    if(default_view_h * max_window_scale == display_get_height())
	        max_window_scale--;
        
	    window_scale = max_window_scale;
    
	    window_scaled_x = default_view_w * window_scale;
	    window_scaled_y = default_view_h * window_scale;
    
	    window_set_size(window_scaled_x,window_scaled_y);
	    alarm[0]=1;
    
	    log_debug("Resizing app surface for fullscreen");
	    log_debug("Old App Surface Size: ", SURFACE_W, ", ", SURFACE_H);
    
	    //Resizing the app surface to size of window
	    surface_resize(application_surface, display_get_width(), display_get_height());

	    log_debug("New App Surface Size: ", display_get_width(), ", ", display_get_height());
    
	    //Using default view height and width
	    view_height = default_view_h;
	    view_width = default_view_w;
    
	    //Resizing gui
	    display_set_gui_size(view_width * gui_scale, view_height * gui_scale);
	}
}
