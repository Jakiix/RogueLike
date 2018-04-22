powerup = argument0
xPosition = argument1
yPosition = argument2

switch (powerup)
{
    case 0:
        instance_create(xPosition, yPosition, Pepsi_obj);
        break;
    case 1:
        instance_create(xPosition, yPosition, Pizza_obj);
        break;
    case 2:
        instance_create(xPosition, yPosition, Cap_obj);
        break;
    case 3:
        instance_create(xPosition, yPosition, Fritas_obj);
        break;
    case 4:
        instance_create(xPosition, yPosition, Mushroom_obj);
        break;
    case 5:
        instance_create(xPosition, yPosition, Ruby_obj);
        break;
    case 6:
        instance_create(xPosition, yPosition, Spinny_obj);
        break;
    case 7:
        instance_create(xPosition, yPosition, Triforce_obj);
        break;
    case 8:
        instance_create(xPosition, yPosition, Water_obj);
        break;
}


    
