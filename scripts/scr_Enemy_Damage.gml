///scr_Enemy_Damage(character_type, character_value, weapon_type, weapon_damage);

var character = argument0;
var value     = argument1;
var weapon    = argument2;
var damage    = argument3;

switch character {
    //If the multi hit character...
    case "GASCHOMP":
    case "WIZARDORB":
    case "SMALLCHOMP":
    case "SPACECHOMP":
    case "PARACHOMP":
    case "ZEPPELIN":
    case "ASTEROID":
    case "CANNON":
    case "NOFACE":
    case "WALLE":
    case "CHOMP":
    case "GHOST":
    case "POOP":
    case "BOSS1":
    case "BAT":
    case "009":
    case "007":
    case "XXX":
    case "PUFF":
        switch weapon {
            //gets hit by the weapon..
            case "AXE":
                global.bonus_count += 1;
                global.bonus_six += 1;
                instance_create(x, y, obj_HIT);
                char_health -= damage;
                can_be_hurt = false;
                alarm[1] = 15;
                with instance_create(x, y-16, obj_Numbers) {
                    num = "- 25";
                    c1 = c_red;
                }
                score += damage;
                break;
            case "AIRBULLET":
                char_health -= damage;
                can_be_hurt = false;
                alarm[1] = 15;
                with instance_create(x, y-16, obj_Numbers) {
                    num = "- 25";
                    c1 = c_red;
                }
                score += damage;
                break;
            case "GOLDAXE":
                global.bonus_count += 1;
                global.bonus_six += 1;
                instance_create(x, y, obj_HIT);
                char_health -= damage;
                can_be_hurt = false;
                alarm[1] = 15;
                with instance_create(x, y-16, obj_Numbers) {
                    num = "- 50";
                    c1 = c_red;
                }
                score += damage;
                break;
            case "NINJA":
                char_health -= damage;
                can_be_hurt = false;
                alarm[1] = 15;
                with instance_create(x, y-16, obj_Numbers) {
                    num = "- 50";
                    c1 = c_red;
                }
                score += damage;
                break;
            case "BOMB":
            case "AIRBOMB":
            case "MISSILE":
                char_health -= damage;
                can_be_hurt = false;
                alarm[1] = 15;
                with instance_create(x, y-16, obj_Numbers) {
                    num = "- 100";
                    c1 = c_red;
                }
                score += damage;
                break;
            case "ORB":
                char_health -= damage;
                can_be_hurt = false;
                alarm[1] = 15;
                with instance_create(x, y-16, obj_Numbers) {
                    num = "- 5";
                    c1 = c_red;
                }
                score += damage;
                break;
            case "NOONE":
                break;
        }
        //If the damage kills the character
        if char_health <= 0 { death = true; }
        break;
    //Shielded characters
    case "WIZARD":
        switch weapon {
            //gets hit by the weapon..
            case "AXE":
                global.bonus_count += 1;
                global.bonus_six += 1;
                instance_create(x, y, obj_HIT);
                char_health -= damage;
                can_be_hurt = false;
                alarm[1] = 15;
                with instance_create(x, y-16, obj_Numbers) {
                    num = "- 25";
                    c1 = c_red;
                }
                score += damage;
                break;
            case "AIRBULLET":
                char_health -= damage;
                can_be_hurt = false;
                alarm[1] = 15;
                with instance_create(x, y-16, obj_Numbers) {
                    num = "- 25";
                    c1 = c_red;
                }
                score += damage;
                break;
            case "GOLDAXE":
                global.bonus_count += 1;
                global.bonus_six += 1;
                instance_create(x, y, obj_HIT);
                char_health -= damage;
                can_be_hurt = false;
                alarm[1] = 15;
                with instance_create(x, y-16, obj_Numbers) {
                    num = "- 50";
                    c1 = c_red;
                }
                score += damage;
                break;
            case "NINJA":
                char_health -= damage;
                can_be_hurt = false;
                alarm[1] = 15;
                with instance_create(x, y-16, obj_Numbers) {
                    num = "- 50";
                    c1 = c_red;
                }
                score += damage;
                break;
            case "BOMB":
            case "AIRBOMB":
            case "MISSILE":
                char_health -= damage;
                can_be_hurt = false;
                alarm[1] = 15;
                with instance_create(x, y-16, obj_Numbers) {
                    num = "- 100";
                    c1 = c_red;
                }
                score += damage;
                break;
            case "ORB":
                char_health -= damage;
                can_be_hurt = false;
                alarm[1] = 15;
                with instance_create(x, y-16, obj_Numbers) {
                    num = "- 5";
                    c1 = c_red;
                }
                score += damage;
                break;
            case "NOONE":
                break;
        }
        //If the damage kills the character
        if char_health <= 0 { death = true; }
            else { if shielded == false { can_shield = true; } }
        break;
    //If the one hit character...
    case "CANNONBALL":
    case "GHOSTSOUL":
    case "POOBULLET":
    case "ACKACK":
    case "ACKSPACE":
    case "GASBOMB":
    case "GASFRAG":
    case "SMLBULLET":
    case "BIGBULLET":
    case "GRENADE":
    case "TNT":
        switch weapon {
            //gets hit by the weapon..
            case "AXE":
                global.bonus_count += 1;
                global.bonus_six += 1;
                instance_create(x, y, obj_HIT);
                with instance_create(global.x, global.y-16, obj_Numbers) {
                    num = "+ 20";
                    c1 = c_yellow;
                }
                score += value;
                can_damage = false;
                death = true;
                break;
            case "AIRBULLET":
                with instance_create(global.x, global.y-16, obj_Numbers) {
                    num = "+ 20";
                    c1 = c_yellow;
                }
                score += value;
                can_damage = false;
                death = true;
                break;
            //gets hit by the golden axe..
            case "GOLDAXE":
                global.bonus_count += 1;
                global.bonus_six += 1;
                instance_create(x, y, obj_HIT);
                with instance_create(global.x, global.y-16, obj_Numbers) {
                    num = "+ 50";
                    c1 = c_yellow;
                }
                score += 50
                can_damage = false;
                death = true;
                break;
            case "BOMB":
            case "AIRBOMB":
            case "MISSILE":
            case "NINJA":
                with instance_create(global.x, global.y-16, obj_Numbers) {
                    num = "+ 50";
                    c1 = c_yellow;
                }
                score += 50
                can_damage = false;
                death = true;
                break;
            //gets hit by shield orb..
            case "ORB":
                break;
            case "NOONE":
                break;
        }
        break;
    case "LIGHTNING":
    case "FLAMESLRG":
    case "ICICLE":
    case "FLAMES":
    case "NOONE":
        break;
}






