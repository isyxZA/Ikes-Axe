if (lives > 0){
    can_die = false;
    global.is_dead = true;
    phy_speed_x = 0;
    phy_speed_y = 0;
    global.can_move = false;
    global.can_jump = false;
    global.can_shoot = false;
    hold_position = true;
    alarm[0] = 220;
    alarm[2] = 180;//holding position
    alarm[8] = 220;
    
    if (global.biplane_joined == true){
        global.biplane_joined = false;
        global.rocket_move = false;
        with (obj_BiPlane){
            move_up = false;
            move_left = false;
            move_right = false;
            phy_position_x = global.checkpointX;
            phy_position_y = global.checkpointY;
            phy_speed_x = 0;
            phy_speed_y = 0;
            dir = 0;
        }
    }
        
    if (global.rocket_joined == true){
        global.rocket_joined = false;
        global.rocket_move = false;
        with (obj_Rocketship){
            move_up = false;
            move_left = false;
            move_right = false;
            phy_position_x = global.checkpointX;
            phy_position_y = global.checkpointY;
            dir = 0;
            phy_speed_x = 0;
            phy_speed_y = 0;
        }
    }

    instance_create(view_xview[0]+(view_wview[0]*0.5), view_yview[0]+(view_hview[0]*0.4), obj_Death_Text);
    instance_create(global.x, global.y, obj_Death_Effect);
    
    with (obj_Main_Char_Hand){
        phy_position_x = x + 80;
        phy_position_y = y + 80;
    }
    
    lives -= 1;
    health = global.hp;
    global.dir = 0;

}
    else if (lives <= 0){
        if global.coins >= 100 {
            global.coins -= 100;
            can_die = false;
            global.is_dead = true;
            phy_speed_x = 0;
            phy_speed_y = 0;
            global.can_move = false;
            global.can_jump = false;
            global.can_shoot = false;
            hold_position = true;
            alarm[0] = 220;
            alarm[2] = 180;//holding position
            alarm[8] = 220;
            
            if (global.biplane_joined == true){
                global.biplane_joined = false;
                global.rocket_move = false;
                with (obj_BiPlane){
                    move_up = false;
                    move_left = false;
                    move_right = false;
                    phy_position_x = global.checkpointX;
                    phy_position_y = global.checkpointY;
                    phy_speed_x = 0;
                    phy_speed_y = 0;
                    dir = 0;
                }
            }
            
        if (global.rocket_joined == true){
            global.rocket_joined = false;
            global.rocket_move = false;
            with (obj_Rocketship){
                move_up = false;
                move_left = false;
                move_right = false;
                phy_position_x = global.checkpointX;
                phy_position_y = global.checkpointY;
                phy_speed_x = 0;
                phy_speed_y = 0;
                dir = 0;
            }
        }
            
        instance_create(view_xview[0] + 480, view_yview[0] + 210, obj_Death_Text);
        instance_create(global.x, global.y, obj_Death_Effect);
        
        with (obj_Main_Char_Hand){
            phy_position_x = x + 80;
            phy_position_y = y + 80;
        }
        
        health = global.hp;
        lives = 0;
        global.dir = 0;
    }
        else {
            if global.planes        != -1 { part_system_destroy(global.planes);        global.planes = -1;        }
            if global.rain          != -1 { part_system_destroy(global.rain);          global.rain = -1;          }
            if global.snow          != -1 { part_system_destroy(global.snow);          global.snow = -1;          }
            if global.shooting_star != -1 { part_system_destroy(global.shooting_star); global.shooting_star = -1; }
            if global.rockets       != -1 { part_system_destroy(global.rockets);       global.rockets = -1;       }
            if global.baloons       != -1 { part_system_destroy(global.baloons);       global.baloons = -1;       }
            if global.smoke         != -1 { part_system_destroy(global.smoke);         global.smoke = -1;         }
            if global.lava_bubbles  != -1 { part_system_destroy(global.lava_bubbles);  global.lava_bubbles = -1;  }
            if global.satellites    != -1 { part_system_destroy(global.satellites);    global.satellites = -1;    }
            if global.space_station != -1 { part_system_destroy(global.space_station); global.space_station = -1; }
            if global.helicopters   != -1 { part_system_destroy(global.helicopters);   global.helicopters = -1;   }
            global.transition = true;
            can_die = false;
            global.is_dead = true;
            phy_speed_x = 0;
            phy_speed_y = 0;
            global.can_move = false;
            global.can_jump = false;
            global.can_shoot = false;
            instance_create(view_xview[0] + view_wview[0] * 0.5, view_yview[0] + view_hview[0] * 0.4, obj_Death_Text);
            instance_create(global.x, global.y, obj_Death_Effect);
            alarm[9] = 80;
        }
}
