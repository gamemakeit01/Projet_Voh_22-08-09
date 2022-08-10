/// @description Insert description here
// You can write your code in this editor





for(var line_length = 0;line_length < ray_length; line_length++){
		var i = 0;
		if(left_or_rigth == -1) i = 180;
		var xx = x + lengthdir_x(line_length,i);
		var yy = y - 25; 
			if(position_meeting(xx,yy,obj_platform) != false ){
				switchStatut(PS.Att);
				changeAnim();
				break;
			}
	}
if (statut == PS.Att){ 
	x = x + speedAtt * left_or_rigth ;
}
else{
x = x + speedRun * left_or_rigth ;
}

