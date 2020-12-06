function rand_index_from_list(_list) {
	if !ds_exists(_list, ds_type_list) { show_error("Not a list! Actual value: " + string(_list), true) }

	var _size = ds_list_size(_list) - 1

	return irandom_range(0, _size)
}