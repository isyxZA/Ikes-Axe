///scr_Character_Damage(character_type, character_damage, x_force, y_force);

var character = argument0;//type of enemy doing damage
var damage    = argument1;//amount of damage being received
global.xforce = argument2*6;
global.yforce = argument3*6;

if global.biplane_joined != true && global.biplane_joined != true {
    obj_Main_Char.hurting = 1;
    obj_Main_Char.air_timer = 0;
    obj_Main_Char.hat_pos = 24;
    obj_Main_Char.phy_linear_damping = 1;
    obj_Main_Char.alarm[5] = 15;
}

health -= damage;

if health == 200 { obj_Main_Char.aura = 4; }
    else if health < 200 && health >= 175 { obj_Main_Char.aura = 3; }
        else if health < 175 && health >= 150 { obj_Main_Char.aura = 2; }
            else if health < 150 && health > 100 { obj_Main_Char.aura = 1; }
                else { obj_Main_Char.aura = 0; }

instance_create(view_xview[0]+view_wview[0]*0.5, view_yview[0]+view_hview[0]*0.5, obj_Blood_Splatter);

if (global.coins > 0) {
    global.coins -= 1;
    audio_play_sound(snd_Coin_Drop, 1, false);
}

switch character {
    case "SPACECHOMP":
    case "PARACHOMP":
    case "SMLBULLET":
    case "009":
    case "007":
    case "CHOMP":
    case "GASCHOMP":
    case "GASBOMB":
    case "ZEPPELIN":
    case "NOFACE":
    case "WALLE":
    case "PUFF":
    case "GRENADE":
    case "XXX":
    case "GHOST":
    case "BAT":
    case "WIZARD":
    case "WIZARDORB":
    case "BOSS1":
    case "TNT":
    case "POOBULLET":
    case "CANNONBALL":
    case "ACKACK":
    case "ACKSPACE":
    case "LIGHTNING":
    case "FLAMELRG":
    case "ASTEROID":
        with instance_create(global.x, global.y, obj_Numbers) {
            num = "- 25";
            c1 = c_red;
        }
        with obj_Main_Char { physics_apply_impulse(x, y, global.xforce, global.yforce); }
        break;
    case "POOP":
    case "GASFRAG":
    case "ICICLE":
    case "FLAMES":
    case "ACKFRAG":
    case "GHOSTSOUL":
        with instance_create(global.x, global.y, obj_Numbers) {
            num = "- 10";
            c1 = c_red;
        }
        with obj_Main_Char { physics_apply_impulse(x, y, global.xforce, global.yforce); }
        break;
    case "SMALLCHOMP":
        with instance_create(global.x, global.y, obj_Numbers) {
            num = "- 5";
            c1 = c_red;
        }
        with obj_Main_Char { physics_apply_impulse(x, y, global.xforce, global.yforce); }
        break;
    case "CANNON":
    case "NOONE":
        break;
}

global.xforce = 0;
global.yforce = 0;
