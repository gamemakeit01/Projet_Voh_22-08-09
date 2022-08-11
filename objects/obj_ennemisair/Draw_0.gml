/// @description Insert description here
// You can write your code in this editor


if(dbDraw){
	for(var deg = 0; deg <=45; deg += 45/6 ){
		//show_debug_message(deg);
		for(var line_length = 0;line_length < ray_length; line_length++){
			var i = 270 + deg * left_or_rigth;
			var xx = x + 34 * left_or_rigth
			+ lengthdir_x(line_length,i);
			var yy = y + lengthdir_y(line_length,i); 
			if(position_meeting(xx,yy,obj_avatar) != false ){
					draw_set_color(c_red);
					draw_circle(xx,yy,5,false);
					break;
				}
			if(position_meeting(xx,yy,obj_platform) != false ){
					draw_set_color(c_blue);
					draw_circle(xx,yy,5,false);
					break;
				}
			draw_set_color(c_lime);
			draw_point(xx,yy);
		}
	}
}











// Inherit the parent event
event_inherited();

