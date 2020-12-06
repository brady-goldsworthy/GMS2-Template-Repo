///@function ds_list_destroy_instances
///@param list
///@param destroy_list?
function ds_list_destroy_instances(_list, _destroy){
	
	//Exit if this list doesn't exist
	if !ds_exists(_list, ds_type_list) {
		log_debug("Inside ds_list_destroy_instances, list does not exist");
		exit;
	}
	
	//Loop through and delete instances held in the list
	for (var _i = 0; _i < ds_list_size(_list); _i++) {
		var _inst = _list[| _i];
		if instance_exists(_inst) {
			instance_destroy(_inst);	
		}
	}

	//Then either destroy or clear the list
	if _destroy {
		ds_list_destroy(_list);
	}
	else {
		ds_list_clear(_list);
	}
}