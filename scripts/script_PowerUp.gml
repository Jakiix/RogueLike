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
}


    
