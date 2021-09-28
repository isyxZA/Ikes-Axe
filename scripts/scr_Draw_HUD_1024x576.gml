health_x = view_xview[0]+view_wview[0]*0.35;
jump_x = view_xview[0]+view_wview[0]*0.5;
boost_x = view_xview[0]+view_wview[0]*0.65;

//Top of HUD
draw_set_font(fnt_20);
draw_sprite_ext(spr_Hud_Large, 0, jump_x, view_yview[0]+2, 1, 1, 0, c_white, 1);

draw_text_outline(view_xview[0] + 224, view_yview[0] + 20, "Score", 1, c_black, 8);//Score Text
draw_text_outline(view_xview[0] + 320, view_yview[0] + 18, string(score), 1, c_black, 8);//Score
draw_text_outline(view_xview[0] + 692, view_yview[0] + 18, global.level_timer, 1, c_black, 8);//Timer

draw_set_font(fnt_12);
draw_sprite_ext(spr_Coin_Spinning, 3, jump_x-74, view_yview[0] + 20, 0.85, 0.85, 0, c_white, 1);
draw_text_outline(jump_x-62, view_yview[0] + 19, global.coins, 1, c_black, 8);//Coin Count
draw_sprite(spr_Poop_Gui, 0, jump_x-6, view_yview[0] + 20);
draw_text_outline(jump_x+6, view_yview[0] + 19, global.poop_count, 1, c_black, 8);//Poop Count
draw_sprite(spr_Soul_Gui, 0, jump_x+70, view_yview[0] + 20);
draw_text_outline(jump_x+82, view_yview[0] + 19, global.soul_count, 1, c_black, 8);//Soul Count

//Middle of HUD
draw_sprite(spr_Hud_Medium, 0, jump_x, view_yview[0] + 38);
draw_sprite(spr_Green_Diamond_HUD, 0, view_xview[0] + 404, view_yview[0] + 49);
draw_text_outline(view_xview[0] + 420, view_yview[0] + 49, string(global.green), 1, c_black, 8);
draw_sprite(spr_Red_Diamond_HUD, 0, view_xview[0] + 468, view_yview[0] + 49);
draw_text_outline(view_xview[0] + 486, view_yview[0] + 49, string(global.red), 1, c_black, 8);
draw_sprite(spr_Yellow_Diamond_HUD, 0, view_xview[0] + 532, view_yview[0] + 49);
draw_text_outline(view_xview[0] + 548, view_yview[0] + 49, string(global.yellow), 1, c_black, 8);
draw_sprite(spr_Blue_Diamond_HUD, 0, view_xview[0] + 596, view_yview[0] + 49);
draw_text_outline(view_xview[0] + 612, view_yview[0] + 49, string(global.blue), 1, c_black, 8);

//Bottom of HUD
draw_set_halign(fa_center);

//Health
draw_text_outline(health_x, view_yview[0]+542, "Health", 1, c_black, 8);
draw_sprite(spr_Hud_Small, 0, health_x, view_yview[0] + 561);
draw_healthbar(health_x-61, view_yview[0] + 557, health_x+60, view_yview[0] + 564, health, c_red, c_green, c_green, 0, 0, 1);
draw_sprite(spr_Border4, 0, health_x, view_yview[0] + 561);
//Boost
draw_text_outline(boost_x, view_yview[0]+542, "Boost", 1, c_black, 8);
draw_sprite(spr_Hud_Small, 0, boost_x, view_yview[0] + 561);
draw_healthbar(boost_x-61, view_yview[0] + 557, boost_x+60, view_yview[0] + 564, global.timer, c_white, c_blue, c_blue, 0, 0, 1);
draw_sprite(spr_Border1, 0, boost_x, view_yview[0] + 561);
//Jump
draw_text_outline(jump_x, view_yview[0]+542, "Jump", 1, c_black, 8);
draw_sprite(spr_Hud_Small, 0, jump_x, view_yview[0] + 561);
draw_healthbar(jump_x-61, view_yview[0] + 557, jump_x+60, view_yview[0] + 564, global.jump_draw, c_yellow, c_red, c_red, 0, 0, 1);
draw_sprite(spr_Border2, 0, jump_x, view_yview[0] + 561);

draw_set_halign(fa_left);


