//Deactivate instances outside of region
switch (room) {
    case rm_Tutorial:
        instance_deactivate_object(obj_Cannon);
        instance_deactivate_object(obj_Gas_Cannon);
        instance_deactivate_object(obj_Tilt_Joint);
        instance_deactivate_object(obj_Wizard1_Joint);
        instance_deactivate_object(obj_Chomp_Wizard1);
        instance_deactivate_object(obj_Rope_Segment);
        instance_deactivate_object(obj_Joint_Hammer);
        instance_deactivate_object(obj_Joint_Glove);
        instance_deactivate_object(obj_Wheel_Arm_N);
        instance_deactivate_object(obj_Wheel_Arm_S);
        instance_deactivate_object(obj_Wheel_Arm_E);
        instance_deactivate_object(obj_Wheel_Arm_W);
        instance_deactivate_object(obj_Enemy_Chomp);
        instance_deactivate_object(obj_Rainbow_Checkpoint);
        if os_type == os_android { 
            instance_activate_region(global.camera_x - 640, global.camera_y - 640, 1280, 960, true); 
        } 
            else { instance_activate_region(global.camera_x - 1920, global.camera_y - 960, 3840, 1920, true);}
        break;
    default:
        break;
}
