randomize();

pickup = irandom(3);

if (place_empty(view_xview[0] + (view_wview[0] / 2), view_yview[0] + (view_hview[0] / 2)) and Player_obj.pickup == false)
{
    switch(pickup)
    {
        case 0:
            instance_create(view_xview[0] + (view_wview[0] / 2), view_yview[0] + (view_hview[0] / 2), Coin_obj);
            break;
        case 1:
            instance_create(view_xview[0] + (view_wview[0] / 2), view_yview[0] + (view_hview[0] / 2), obj_HP);
            break;
        /*case 2:
            instance_create(view_xview[0] + (view_wview[0] / 2), view_yview[0] + (view_hview[0] / 2), Coin_obj);
            break;
        case 3:
            instance_create(view_xview[0] + (view_wview[0] / 2), view_yview[0] + (view_hview[0] / 2), Coin_obj);
            break;*/
    }
}
