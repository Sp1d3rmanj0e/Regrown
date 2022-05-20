function buttonScript(_ind){
	
	switch(_ind) {
		
		case B_ACTION.PLAY: room_goto(rm_home); break;
		case B_ACTION.CREDITS: room_goto(rm_credits); break;
		case B_ACTION.QUIT: game_end(); break;
		case B_ACTION.BACK: room_goto(rm_titleScreen); break;
	}
}