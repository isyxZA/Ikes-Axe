global.pause = false;
global.pause_bg = -1;
global.current_room = room;

global.hp = 100;
global.dir = 0;
global.can_move = false;
global.is_dead = false;
global.move_speed = 1200;
global.speed_boost = global.move_speed*1.5;
global.jump_force = 0;
global.xforce = 0;
global.yforce = 0;
global.can_jump = false;
global.can_shoot = false;
global.rocket_boost = false;
global.checkpointX = 0;
global.checkpointY = 0;
global.level_timer = string("0:0");
global.minutes = 0;
global.seconds = 0;
global.lt_run = false;
global.lt_pause = false;
global.lt_reset = true;
global.next_level = -1;
global.poop_count = 0;
global.coins = 0;
global.bonus_count = 0;
global.bonus_six = 0;
global.soul_count = 0;
global.start_score = 0;
global.level_score = 0;
global.start_coins = 0;
global.level_coins = 0;
global.start_poop = 0;
global.level_poop = 0;
global.start_souls = 0;
global.level_souls = 0;
score = 0;

global.end_level = false;
global.transition = false;
global.stage_header = "";
global.stage_name = "";
global.shield = false;
global.camera_shake_01 = false;
global.rocket_joined = false;
global.biplane_joined = false;
global.rocket_move = false;
global.rocket_x = 0;
global.rocket_y = 0;
global.red = 0;
global.green = 0;
global.yellow = 0;
global.blue = 0;
global.axe_boost_r = 0;
global.axe_boost_l = 0;
global.shield_joint = true;
global.incr = 0;
global.boost_duration = 1.3;
global.timer = 100;
global.blur = false;
global.jump_draw = 100;
global.sound_distance = 600;
global.view_distance = 960;
global.is_paused = false;
global.game_over = false;
global.camera_x = 0;
global.camera_y = 0;

//Particle systems
global.planes = -1;
global.rain = -1;
global.snow = -1;
global.shooting_star = -1;
global.rockets = -1;
global.baloons = -1;
global.smoke = -1;
global.lava_bubbles = -1;
global.satellites = -1;
global.space_station = -1;
global.helicopters = -1;

//Virtual Keys
global.up = -1;
global.down = -1;
global.left = -1;
global.right = -1;
global.boost = -1;
global.jump = -1;
global.shootleft = -1;
global.shootright = -1;
global.esc = -1;
global.enter = -1;
