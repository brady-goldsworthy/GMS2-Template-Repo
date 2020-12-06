#region Init Camera macros

#macro VIEW view_camera[0]
#macro VIEW_W camera_get_view_width(view_camera[0])
#macro VIEW_H camera_get_view_height(view_camera[0])
#macro VIEW_CX camera_get_view_width(view_camera[0]) / 2
#macro VIEW_CY camera_get_view_height(view_camera[0]) / 2
#macro VIEW_X camera_get_view_x(view_camera[0])
#macro VIEW_Y camera_get_view_y(view_camera[0])
#macro GUI_W display_get_gui_width()
#macro GUI_H display_get_gui_height()
#macro GUI_SCALE obj_camera.gui_scale
#macro GUI_CENTER_X GUI_W div 2
#macro GUI_CENTER_Y GUI_H div 2

#macro SHAKE_AMOUNT_HUGE 15
#macro SHAKE_AMOUNT_BIG 5
#macro SHAKE_AMOUNT_LARGE 1.5
#macro SHAKE_AMOUNT_MEDIUM 1.0
#macro SHAKE_AMOUNT_SMALL 0.5
#macro SHAKE_AMOUNT_TINY 0.25
#macro SHAKE_AMOUNT_VERY_TINY 0.1
#macro SHAKE_DECAY 0.9

#endregion

function camera_init() {
	
	log_debug("Initializing Camera");
	
	instance_create(0, 0, obj_camera);
	
	with obj_camera {

		//Uncomment if doing surface stuff
		//application_surface_draw_enable(false);

		//Default camera zoom level
		cam_scale = 4;
		gui_scale = 3;

		target_obj = obj_player;
		target_x = -1;
		target_y = -1;

		screen_shake = 0;
		
		camera_update_resolution()
	}
}