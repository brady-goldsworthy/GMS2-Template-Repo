function throw_error() {
	var _str = "";

	for (var _i = 0; _i < argument_count; _i++) {
	    _str += string(argument[_i]);
	}
	
	throw _str;
}