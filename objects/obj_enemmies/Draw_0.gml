/// @description Insert description here
// You can write your code in this editor


draw_self();

if(dbDraw){
	for(var line_length = 0;line_length < ray_length; line_length++){
		var i = 0;
		if(left_or_rigth == -1) i = 180;
		var xx = x + lengthdir_x(line_length,i);
		var yy = y - 25; 
		//if(position_empty(xx,yy) == false){
			if(position_meeting(xx,yy,obj_platform) != false ){
				draw_set_color(c_red);
				draw_circle(xx,yy,5,false);
				break;
			}
		//}
	draw_set_color(c_lime);
	draw_point(xx,yy);
	}

}









