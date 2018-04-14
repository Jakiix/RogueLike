switch (mpos)
{
    case 0:
    {
        if !(instance_exists(obj_keyController))
        {
            var a = instance_create(room_width / 2, room_height / 2, obj_keyController);
            a.purpose = "up";
        }
        break;
    }
    case 1:
    {

        if !(instance_exists(obj_keyController))
        {
            var a = instance_create(room_width / 2, room_height / 2, obj_keyController);
            a.purpose = "left";
        }
        break;
    }
    case 2:
    {
        if !(instance_exists(obj_keyController))
            {
                var a = instance_create(room_width / 2, room_height / 2, obj_keyController);
                a.purpose = "down";
            }
        break;
    }
    case 3:
    {
        if !(instance_exists(obj_keyController))
            {
                var a = instance_create(room_width / 2, room_height / 2, obj_keyController);
                a.purpose = "right";
            }
        break;
    }
    case 4:
    {
        if !(instance_exists(obj_keyController))
            {
                var a = instance_create(room_width / 2, room_height / 2, obj_keyController);
                a.purpose = "shot_up";
            }
        break;
    }
    case 5:
    {
        if !(instance_exists(obj_keyController))
        {
            var a = instance_create(room_width / 2, room_height / 2, obj_keyController);
            a.purpose = "shot_left";
        }
        break;
    }
    case 6:
    {
        if !(instance_exists(obj_keyController))
        {
            var a = instance_create(room_width / 2, room_height / 2, obj_keyController);
            a.purpose = "shot_down";
        }
        break;
    }
    case 7:
    {
        if !(instance_exists(obj_keyController))
        {
            var a = instance_create(room_width / 2, room_height / 2, obj_keyController);
            a.purpose = "shot_right";
        }
        break;
    }
    case 8:
    {
        room_goto(Menu_option);
        break;
    }
    case 9:
    {
        if (room == Menu_control)
        {
            if !(instance_exists(obj_keyController))
            {
                ini_open("settings.ini");
                global.key_up = obj_key_up.key;
                global.key_down = obj_key_down.key;
                global.key_left = obj_key_left.key;
                global.key_right = obj_key_right.key;
                global.key_shot_up = obj_key_shot_up.key;
                global.key_shot_down = obj_key_shot_down.key;
                global.key_shot_left = obj_key_shot_left.key;
                global.key_shot_right = obj_key_shot_right.key;
                
                ini_write_real("control", "up", global.key_up);
                ini_write_real("control", "down", global.key_down);
                ini_write_real("control", "left", global.key_left);
                ini_write_real("control", "right", global.key_right);
                ini_write_real("control", "shot_up", global.key_shot_up);
                ini_write_real("control", "shot_down", global.key_shot_down);
                ini_write_real("control", "shot_left", global.key_shot_left);
                ini_write_real("control", "shot_right", global.key_shot_right);
                ini_close();
                room_goto(Menu_option);
            }
        }
        break;
    }
}
