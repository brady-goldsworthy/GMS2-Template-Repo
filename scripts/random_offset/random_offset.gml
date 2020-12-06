///@arg value
///@arg offset
function random_offset(_value, _offset) {
	return random_range(_value - _offset, _value + _offset);
}
