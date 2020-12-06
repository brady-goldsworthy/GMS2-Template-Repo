function ds_map_destroy_if_exists(_map) {
	if ds_exists(_map, ds_type_map) {
		ds_list_destroy(_map)	
	}
}
