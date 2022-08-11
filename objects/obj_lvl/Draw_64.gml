/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

var _obj_avatar = instance_find(obj_avatar,0);
//draw_sprite(spr_coeur,0,0,0);
for( var _i = 0; _obj_avatar.vie >_i;_i = _i+1){
//draw_sprite(spr_coeur,0,_i*10,0);
var _scale = 0.3;
draw_sprite_ext(spr_coeur,0,sprite_get_width(spr_coeur)*_scale*_i,0,_scale,_scale,0,-1,1);
}




