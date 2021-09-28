if (file_exists("Save.sav")){ file_delete("Save.sav"); }

ini_open("Save.sav"); // gamemaker will create the file


ini_write_real("Save_Data", "Room", room);
ini_write_real("Save_Data", "Health", global.hp);
ini_write_real("Save_Data", "Score", score);
ini_write_real("Save_Data", "Axe Left", global.axe_boost_l);
ini_write_real("Save_Data", "Axe Right", global.axe_boost_r);
ini_write_real("Save_Data", "Red", global.red);
ini_write_real("Save_Data", "Green", global.green);
ini_write_real("Save_Data", "Yellow", global.yellow);
ini_write_real("Save_Data", "Blue", global.blue);
ini_write_real("Save_Data", "Soul Count", global.soul_count);
ini_write_real("Save_Data", "Poop Count", global.poop_count);
ini_write_real("Save_Data", "Coins", global.coins);



ini_close(); 
