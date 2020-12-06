#macro INSTANCE_LAYER "Instances"

function instance_create(_x, _y, _obj_index) {
	return instance_create_layer(_x, _y, INSTANCE_LAYER, _obj_index);
}
