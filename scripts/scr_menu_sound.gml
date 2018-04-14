switch (mpos)
{
    case 0:
    {
        room_goto(Menu_option);
        break;
    }
    case 1:
    {
        ini_open("settings.ini");
        global.ambientSound = obj_hslider_ambient.percentage;
        global.effectSound = obj_hslider_effects.percentage;
        global.musicSound = obj_hslider_music.percentage;
                
        ini_write_real("sound", "ambient", global.ambientSound);
        ini_write_real("sound", "effect", global.effectSound);
        ini_write_real("sound", "music", global.musicSound);
        ini_close();
        room_goto(Menu_option); 
        break;
    }
}
