/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur


/// @description Insert description here
// You can write your code in this editor

if ( statut == PS.RunAtt ){
	sprite_index = ani_run;
}
for(var line_length = 0;line_length < ray_length; line_length++){
		var i = 0;
		if(left_or_rigth == -1) i = 180;
		var xx = x + lengthdir_x(line_length,i);
		var yy = y - 25; 
			if(position_meeting(xx,yy,obj_avatar) != false){
				switchStatut(PS.Att);
				changeAnim();
				if(distanceSlash>line_length){
				switchStatut(PS.RunAtt);
				changeAnim();
				}
				break;
			}
	
	}
if (statut == PS.Att || PS.RunAtt == statut){ 
	x = x + speedAtt * left_or_rigth ;
	
}
else{
	// Inherit the parent event
	x = x + speedRun * left_or_rigth ;
}





