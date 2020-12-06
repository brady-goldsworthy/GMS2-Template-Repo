function load_json_from_file(_filepath, _fatal) {

	if !file_exists(_filepath) {
		if _fatal { show_error("Fatal error!\n file at path: " + _filepath + " was not found.", true); }
		
		return -1;
	}
	
	var buffer = buffer_load(_filepath);
	var buffer_str = buffer_read(buffer, buffer_string);
	buffer_delete(buffer);

	var json_str = json_decode(buffer_str);
	return json_str;

}