function animcurve_get_value(_asset, _channel, _pos){
	var _curve_struct = animcurve_get(_asset);
	var _chan = animcurve_get_channel(_curve_struct, _channel);
	var _value = animcurve_channel_evaluate(_chan, _pos);

	return _value;
}