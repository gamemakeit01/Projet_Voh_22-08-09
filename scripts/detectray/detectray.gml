// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function detectRay(){
for(var line_length = 0;line_length < ray_length; line_length++){
		var i = 0;
		if(left_or_rigth == -1) i = 180;
		var xx = x + lengthdir_x(line_length,i);
		var yy = y - 25; 
		if(position_meeting(xx,yy,obj_platform) != false ){
			return true
			}
	}
	return false;
}