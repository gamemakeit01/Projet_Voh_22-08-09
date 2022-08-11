/// @description Insert description here
// You can write your code in this editor
if ( statut!= PS.Die){



// Inherit the parent event
event_inherited();

if(image_index == 6 && statut == PS.Att){
	var _obj = instance_create_depth(x+ image_xscale*120,y- image_yscale*118,0,obj_feche);
	_obj.left_or_rigth = left_or_rigth;
	_obj.image_yscale=left_or_rigth*_obj.image_yscale;
}}
else {
	if(image_index >= image_number - 1 && image_speed !=0 ){
		image_speed = 0;
		alarm_set(11,60);
	}
}