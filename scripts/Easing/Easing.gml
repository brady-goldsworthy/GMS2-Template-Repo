///@function ease_out_bounce
///@param timer
///@param start
///@param end
///@param duration
function ease_out_bounce(_timer, _start, _end, _duration) {
	_timer /= _duration;

	if (_timer < 1/2.75)
	{
	    return _end * 7.5625 * _timer * _timer + _start;
	}
	else
	if (_timer < 2/2.75)
	{
	    _timer -= 1.5/2.75;
	    return _end * (7.5625 * _timer * _timer + 0.75) + _start;
	}
	else
	if (_timer < 2.5/2.75)
	{
	    _timer -= 2.25/2.75;
	    return _end * (7.5625 * _timer * _timer + 0.9375) + _start;
	}
	else
	{
	    _timer -= 2.625/2.75;
	    return _end * (7.5625 * _timer * _timer + 0.984375) + _start;
	}
}

function ease_in_quart() {
	return argument2 * power(argument0 / argument3, 4) + argument1;
}

function ease_linear(_timer, _start, _change, _duration) {
	return _change * _timer / _duration + _start;
}

function ease_out_elastic() {
	var t = argument[0];
var b = argument[1];
var c = argument[2];
var d = argument[3];

var s = 1.7;
var p = 0;
var a = c;
if (t==0) return b;
t/=d;
if (t==1) return b+c;
if(!p) p=d*.4;
if (a < abs(c)) {
	a=c;
	s=p/4;
} else {
	s=p/(2*pi)*arcsin(c/a);
}

return a*power(2,-10*t)*sin((t*d-s)*(2*pi)/p)+c+b;

}

function ease_in_out_cubic() {
	argument0 /= argument3 * 0.5;

	if (argument0 < 1)
	{
	   return argument2 * 0.5 * power(argument0, 3) + argument1;
	}

	return argument2 * 0.5 * (power(argument0 - 2, 3) + 2) + argument1;	
}

function ease_out_back() {
	var _s = 1.70158;

	argument0 = argument0/argument3 - 1;
	return argument2 * (argument0 * argument0 * ((_s + 1) * argument0 + _s) + 1) + argument1;
}
