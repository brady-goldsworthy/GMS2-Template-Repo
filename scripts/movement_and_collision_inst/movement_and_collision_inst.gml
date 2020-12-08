///@function movement_and_collision_inst
///@arg direction
///@arg movespeed
///@arg wall object
///@arg [count]
/// returns instance that was collided with, or -1 for no collision
function movement_and_collision_inst() {
		///********************************************************///
	///         PLEASE REPORT ISSUES TO PIXELATED POPE         ///
	/// Twitter: @pixelated_pope  Discord: Pixelated_Pope#7777 ///
	///********************************************************///

	//Settings
	var _max_scan_angle = 75,
	    _inc = 1,
   
	    _mv_dir = argument[0],
	    _mv_spd = argument[1],
	    _wall   = argument[2],
	    _count  = argument_count > 3 ? argument[3] + 1 : 1,
	    _limit  = 4;


	if(_mv_dir == no_direction || _mv_spd == 0 || _count > _limit) return noone;
 
	var _xtarg = x + lengthdir_x(_mv_spd, _mv_dir),
	    _ytarg = y + lengthdir_y(_mv_spd, _mv_dir);
 
	var _col = instance_place(_xtarg, _ytarg, _wall)
	if(_col == noone or !_col.can_collide)
	{ //Nothing in the way, move forward
	  x = _xtarg;
	  y = _ytarg;
	  return _col;
	}

	var _x_inc = lengthdir_x(1, _mv_dir),
	    _y_inc = lengthdir_y(1, _mv_dir);
 
	//Move to just inside the wall
	while(_col == noone or !_col.can_collide)
	{
	
	  if(point_distance(x, y, _xtarg + _x_inc, _ytarg + _y_inc) > _mv_spd) break;
	  _xtarg += _x_inc;
	  _ytarg += _y_inc;
	  _col = instance_place(_xtarg, _ytarg, _wall)
	}
 
	//Scan for openings laterally
	var _dist = 0;

	do
	{
	  _dist += _inc;
	  var _sign = 1,
	      _test_dir = _mv_dir;
	  repeat(2)
	  {
	    var _testx = _xtarg + lengthdir_x(_dist, _mv_dir + 90 * _sign);
	    var _testy = _ytarg + lengthdir_y(_dist, _mv_dir + 90 * _sign);
	    _test_dir = point_direction(x, y, _testx, _testy);
		_col = instance_place(_testx, _testy, _wall)
	    if(_col == noone or !_col.can_collide) //We found an opening.  Go ahead and move towards that.
	        return movement_and_collision_inst(_test_dir, _mv_spd, _wall, _count);
	    _sign = -1;
	  }
	} until(abs(angle_difference(_mv_dir, _test_dir)) > _max_scan_angle)
 
	//Face plant into wall
	var _loop_count = 0, _max_loops = 5;
	while(!place_meeting(x + _x_inc, y + _y_inc, _wall) and _loop_count < _max_loops)
	{
	    x += _x_inc;
	    y += _y_inc;
		_loop_count++;
	}
 
	return _col;
}