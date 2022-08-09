/// @description Insert description here
// You can write your code in this editor
//y =y+3;

if !place_meeting(x, y+1, obj_platform){
	y +=grav
	check_collision_verti();
};

if(keyboard_check(vk_left) && !place_meeting(x-speedRun, y - 0.5, obj_platform)){
	x -=speedRun;
	check_collision_hori();
}

if(keyboard_check(vk_right) && !place_meeting(x+speedRun, y - 0.5, obj_platform)){
	x +=speedRun;
	check_collision_hori();
}

if(keyboard_check_pressed(vk_up) && !check_collision_fall()){
	isJump = true;
	alarm[0] = timeJump;
}

if(keyboard_check_released(vk_up)){
	isJump = false;
}

if(isJump){
	y = y - fjump;
}
