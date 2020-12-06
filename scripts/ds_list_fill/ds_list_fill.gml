///@function ds_list_fill
///@param list
///@param size
///@param value
///@param [replace?]
function ds_list_fill() {
	var _list = argument[0]
	var _size = argument[1]
	var _value = argument[2]
	var _replace = argument_count > 3 ? argument[3] : false

	if !_replace {
	    for (var i = 0; i < _size; i++) {
	        ds_list_add(_list, _value)
	    }
	}
	else {
	    for (var i = 0; i < ds_list_size(_list); i++) {
	        ds_list_replace(_list, i, _value)
	    }
	}
}
