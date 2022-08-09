// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function check_collision_hori(){
	var hsp = xprevious - x;
	//show_debug_message("x1:"+ string(x));
	while (!place_empty(x - 0.5 * sign(hsp),y-0.5,obj_platform)) {
		x += 0.5 * sign(hsp);
	}
	//show_debug_message("x2:" + string(x));
}

function check_collision_verti(){
	var vsp = yprevious - y;
	//show_debug_message("y1:"+ string(y));
	while (!place_empty(x,y + 0.5 * sign(vsp),obj_platform)) {
		y +=  0.5 * sign(vsp);
	}
	//show_debug_message("y2:" + string(y));
}

function check_collision_fall(){
	if(place_empty(x,y + 1,obj_platform)) return true;
	else return false
}

