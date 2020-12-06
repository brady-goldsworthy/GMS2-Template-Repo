function ds_list_add_list(_list, _child_list) {
	ds_list_add(_list, _child_list);
	ds_list_mark_as_list(_list, ds_list_size( _list ) - 1);
}
