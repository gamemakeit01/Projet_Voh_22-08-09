/// @description Insert description here
// You can write your code in this editor
//y =y+3;



if(statut != PS.Idle && xprevious == x && yprevious == y  && !isAtt ){// Si imobil mettre Idle
		//show_debug_message(" je suis imobil")
		switchStatut(PS.Idle);
		changeAnim();
}

if !place_meeting(x, y+1, obj_platform){// gravity
	y +=grav
	check_collision_verti(obj_platform);
};

if(keyboard_check(vk_left) && !place_meeting(x-speedRun, y - 0.5, obj_platform)){ // touche gauche
	x -=speedRun;
	check_collision_hori(obj_platform);
		invScale(-1);
		if(statut!=PS.Run){
		switchStatut(PS.Run);	
		changeAnim();
		}
}

if(keyboard_check(vk_right) && !place_meeting(x+speedRun, y - 0.5, obj_platform)){ // touche droite
	x +=speedRun;
	check_collision_hori(obj_platform);
	invScale(1)
	if(statut!=PS.Run){
		switchStatut(PS.Run);	
		changeAnim();
	}
}

if(keyboard_check_pressed(vk_up) && !check_collision_fall(obj_platform)){ // press fleche haut
	isJump = true;
	alarm[0] = timeJump;
	if(statut!=PS.Jump){
		switchStatut(PS.Jump);	
		changeAnim();
	}
}

if(keyboard_check_released(vk_up)){ // relache fléche haut
	isJump = false;
}

if(keyboard_check_pressed(vk_space) && statut != PS.Att && !isAtt){ // press espace
	isAtt = true;
	switchStatut(PS.Att);
	changeAnim();
	image_index = 0;
}

if(isJump){ // si en saut
	y = y - fjump;
	check_collision_verti(obj_platform)
}

if(yprevious - y < 0 && statut != PS.Fall){ // S'il tombe 
	switchStatut(PS.Fall);
	changeAnim();
}

if(isAtt  && image_index > image_number - 1 ){ // s'il att 
	isAtt = false;
}

//if(animation == spr_barbare_run) show_debug_message("spr_barbare_run");//
//image_speed = 1;
//image_index=animation;
if ( vie==0 ){
	switchStatut(PS.Die);
	changeAnim();
}

