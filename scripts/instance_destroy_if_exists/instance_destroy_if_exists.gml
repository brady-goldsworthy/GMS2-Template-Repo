function instance_destroy_if_exists(_inst) {
	if _inst != -1 and instance_exists(_inst) {
		instance_destroy(_inst);
	}
}
