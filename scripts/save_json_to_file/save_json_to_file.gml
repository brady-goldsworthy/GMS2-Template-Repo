function save_json_to_file(_filename, _string) {
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save_async(_buffer, _filename, 0, string_byte_length(_string) + 1);
	buffer_delete(_buffer);
}