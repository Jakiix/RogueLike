switch (mpos)
{
    case 0:
    {
        room_goto(Level);
        break;
    }
    case 1:
    {
        break;
    }
    case 2:
    {
        room_goto(Menu_option);
        break;
    }
    case 3: game_end(); break
    default: break;
}
