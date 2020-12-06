function ds_grid_destroy_if_exists(_grid) {
	if ds_exists(_grid, ds_type_grid) {
		ds_grid_destroy(_grid);
	}
}
