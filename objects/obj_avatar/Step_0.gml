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
		invScale(-1);
		if(statut!=PS.Run){
		switchStatut(PS.Run);	
		changeAnim();
		}
}

if(keyboard_check(vk_right) && !place_meeting(x+speedRun, y - 0.5, obj_platform)){
	x +=speedRun;
	check_collision_hori();
	invScale(1)
	if(statut!=PS.Run){
		switchStatut(PS.Run);	
		changeAnim();
	}
}

if(keyboard_check_pressed(vk_up) && !check_collision_fall()){
	isJump = true;
	alarm[0] = timeJump;
	if(statut!=PS.Jump){
		switchStatut(PS.Jump);	
		changeAnim();
	}
}

if(keyboard_check_released(vk_up)){
	isJump = false;
}

if(isJump){
	y = y - fjump;
}

if(statut != PS.Idle && xprevious == x && yprevious == y ){
		show_debug_message(" je suis imobil")
		switchStatut(PS.Idle);
		changeAnim();
}
//if(animation == spr_barbare_run) show_debug_message("spr_barbare_run");//
//image_speed = 1;
//image_index=animation;


