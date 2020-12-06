function rand_from_list(_list) {

	var _size = ds_list_size(_list) - 1

	return _list[| irandom_range(0, _size)];
}
