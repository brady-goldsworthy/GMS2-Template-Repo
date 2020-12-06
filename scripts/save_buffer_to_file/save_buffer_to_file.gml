function save_buffer_to_file(_filename, _buffer) {
	buffer_save(_buffer, _filename);
	buffer_delete(_buffer);
}