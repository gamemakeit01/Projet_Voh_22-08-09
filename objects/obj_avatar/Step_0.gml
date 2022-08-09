/// @description Insert description here
// You can write your code in this editor
//y =y+3;

//if !place_meeting(x, y+5, obj_platform) y +=5;
y+=5;

if(keyboard_check(vk_left)){
	if !place_meeting(x-3, y-5, obj_platform) x -=3;
}

if(keyboard_check(vk_right)){
	if !place_meeting(x+3, y-5, obj_platform) x +=3;
}

if(keyboard_check_pressed(vk_up)){
	isJump = true;
	alarm[0] = 60;
}

if(keyboard_check_released(vk_up)){
	isJump = false;
}

if(isJump){
	y = y - 5;
}

//check_collision_hori();
check_collision_verti();


