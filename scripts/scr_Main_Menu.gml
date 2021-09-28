switch (menu_pos){
    case 0:
        audio_stop_all();
        room_goto(rm_Tutorial);
        break;
    case 1:
        audio_stop_all();
        scr_Load_Game();
        break;
    case 2:
        //audio_stop_all();
        room_goto(rm_Controls);
        break;
    case 3:
        //audio_stop_all();
        room_goto(rm_Credits);
        break;
    case 4:
        game_end();
        break;
    default: 
        break;
}
