/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if ( other.statut == PS.RunAtt && isInvicible != true ){
	vie=vie-1
	isInvicible=true;
	alarm_set(1,50);
}

show_debug_message("vie: "+string(vie))

