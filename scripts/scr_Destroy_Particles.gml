///scr_Destroy_Particles

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
