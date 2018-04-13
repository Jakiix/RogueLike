switch (mpos)
{
    case 0:
    {
        break;
    }
    case 1:
    {
        room_goto(Menu_control);
        break;
    }
    case 2:
    {
        if (room == Menu_sound || room == Menu_control)
        {
            if (instance_exists(obj_keyController))
            {
              room_goto(Menu_option);  
            }
        }
        else
        {
            room_goto(Menu);
        }
        break;
    }
}
