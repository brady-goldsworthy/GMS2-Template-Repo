function ds_list_destroy_if_exists(_list) {
	if ds_exists(_list, ds_type_list) {
		ds_list_destroy(_list)	
	}
}
