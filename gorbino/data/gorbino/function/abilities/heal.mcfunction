give @s red_dye[food={nutrition:0,saturation:0,can_always_eat:1b},consumable={consume_seconds:3,animation:brush,sound:"block.beacon.activate",has_consume_particles:0b},use_cooldown={seconds:30}]
effect give @s instant_health 5 0 true


#Acdancement
scoreboard players add @s GB_Heal_Check 1
advancement grant @s[scores={GB_Heal_Check=5}] only gorbino:health