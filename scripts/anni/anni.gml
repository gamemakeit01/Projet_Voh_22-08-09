// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
enum PS{
	
	Att,
	Run,
	Jump,
	RunAtt,
	Die,
	Fall,
	Idle
}

function invScale(i){
		//image_xscale = i * abs(image_xscale);
}

function changeAnim(){
	switch(statut){
			case PS.Att:
				animation=ani_att;
			break;
			case PS.Jump:
				animation=ani_jump;
			break;
			case PS.Run:
				animation=ani_run;
				//show_debug_message("ani_run")
			break;
			case PS.RunAtt:
				animation=ani_runAtt;
			break;
			case PS.Fall:
				animation=ani_fall;
			break;
			case PS.Die:
				animation=ani_die;	
			break;
			case PS.Idle :
				animation=ani_idle;
			break;
	}
//if(animation == spr_barbare_run) show_debug_message("spr_barbare_run");//
sprite_index = animation;
	
}
function switchStatut(_statut){
	switch(_statut){
		case PS.Att:
			statut= PS.Att;
		break;
		case PS.Jump:
			statut= PS.Jump;
		break;
		case PS.Run:
			statut= PS.Run;
			//show_debug_message("run");
		break;
		case PS.RunAtt:
			statut= PS.RunAtt;
		break;
		case PS.Fall:
			statut= PS.Fall;
		break;
		case PS.Die:
			statut= PS.Die;
		break;
		case PS.Idle :
			statut= PS.Idle;
			//show_debug_message("idle");
		break;
	}
}