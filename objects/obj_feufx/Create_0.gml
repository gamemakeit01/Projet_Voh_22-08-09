/// @description Insert description here
// You can write your code in this editor

partSystem = part_system_create();

_p1 =part_type_create();
part_type_shape(_p1,pt_shape_disk);
part_type_life(_p1,20,40);
part_type_alpha2(_p1,1,0);

part_type_size(_p1,0.1,0.2,0.025,0);
part_type_speed(_p1,2,4,0,0);
part_type_direction(_p1,0,360,0,0);














