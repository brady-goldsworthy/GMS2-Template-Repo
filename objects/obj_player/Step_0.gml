///@description 

move_x = (input.right - input.left);
move_y = (input.down - input.up);

//Calculate move dir based on input
move_dir = point_direction(0, 0, move_x, move_y);

if move_x != 0 or move_y != 0 {
	movement_and_collision(move_dir, move_spd, obj_collision);
}