// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function check_collision_hori(){
	hsp = xprevious - x;
	while (!place_empty(x+hsp,y,obj_platform)) {
		x += -0.5 * sign(hsp);
	}
}

function check_collision_verti(){
	vsp = yprevious - y;
	while (!place_empty(x,y + 0.5 * sign(vsp),obj_platform)) {
		y +=  0.5 * sign(vsp);
	}
}