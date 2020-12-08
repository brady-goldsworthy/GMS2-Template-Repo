///@description 

//Arrow keys
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);

//Left mouse button
mouse_left_pressed = mouse_check_button_pressed(mb_left);
mouse_left_down = mouse_check_button(mb_left);
mouse_left_released = mouse_check_button_released(mb_left);

//Right mouse button
mouse_right_pressed = mouse_check_button_pressed(mb_right);
mouse_right_down = mouse_check_button(mb_right);
mouse_right_released = mouse_check_button_released(mb_right);

//Mouse scroll wheel
mouse_scroll_up = mouse_wheel_up();
mouse_scroll_down = mouse_wheel_down();

