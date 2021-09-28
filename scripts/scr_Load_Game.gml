if (file_exists("Save.sav")){
    ini_open("Save.sav");
    var Load_Room = ini_read_real("Save_Data", "Room", rm_Tutorial);;
    health = ini_read_real("Save_Data", "Health", 100);
    score = ini_read_real("Save_Data", "Score", 0);
    global.axe_boost_l = ini_read_real("Save_Data", "Axe Left", 0);
    global.axe_boost_r = ini_read_real("Save_Data", "Axe Right", 0);
    global.red = ini_read_real("Save_Data", "Red", 0);
    global.green = ini_read_real("Save_Data", "Green", 0);
    global.yellow = ini_read_real("Save_Data", "Yellow", 0);
    global.blue = ini_read_real("Save_Data", "Blue", 0);
    global.soul_count = ini_read_real("Save_Data", "Soul Count", 0);
    global.poop_count = ini_read_real("Save_Data", "Poop Count", 0);
    global.coins = ini_read_real("Save_Data", "Coins", 0);
    ini_close();
    room_goto(Load_Room);
}
    else
    {
        room_goto(rm_Tutorial);
    }
