switch (menu_pos){
    case 0:
        //Return to previous room/continue
        if (global.pause == true){
            global.pause = false;
            background_delete(global.pause_bg);
            room_goto(global.current_room);
            audio_resume_all();
        }
        break;
    case 1:
        //Restart game, back to main menu
        scr_Destroy_Particles();
        audio_stop_all();
        game_restart();
        break;
    case 2:
        //Show Controls
        global.is_paused = true;
        room_goto(rm_Controls);
        break;
    case 3:
        //Quit
        audio_stop_all();
        game_end();
        break;
    default: 
        break;
}
