var modHealth;
modHealth = hp / hpMax;         // Whatever health we have, we want it splite into 3 parts
modHealth *= 3;
modHealth = round(modHealth);

if modHealth == 1
{
image_index = 1;
}
else
{
if modHealth == 0
    {
    image_index = 2;
    }
else
    {
    if hp < 0 instance_destroy();
    }
}