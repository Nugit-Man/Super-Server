scoreboard players remove @a[scores={MM_Chicken_Song=1..},tag=MM_Class_Chicken] MM_Chicken_Song 1

execute as @s[scores={MM_Chicken_Song=0},tag=MM_Class_Chicken] run stopsound @a master mob_madness.lava_chicken
execute as @s[scores={MM_Chicken_Song=0},tag=MM_Class_Chicken] run stopsound @a master mob_madness.lava_chicken2
execute as @s[scores={MM_Chicken_Song=0},tag=MM_Class_Chicken] run stopsound @a master mob_madness.lava_chicken3
execute as @s[scores={MM_Chicken_Song=0},tag=MM_Class_Chicken] run stopsound @a master mob_madness.lava_chicken4
execute as @s[scores={MM_Chicken_Song=1},tag=MM_Class_Chicken] run effect clear @a speed
execute as @s[scores={MM_Chicken_Song=1},tag=MM_Class_Chicken] run effect clear @a strength
execute as @s[scores={MM_Chicken_Song=1},tag=MM_Class_Chicken] run effect clear @a regeneration
execute as @s[scores={MM_Chicken_Song=1},tag=MM_Class_Chicken] run effect clear @a resistance


#Chicken Buffs
execute at @a[tag=MM_Red,tag=MM_Class_Chicken,tag=MM_Chicken_Song_Speed,scores={MM_Chicken_Song=1..}] as @a[tag=MM_Red,distance=..5] run attribute @s minecraft:movement_speed modifier add mob_madness:1 0.055 add_value
execute at @a[tag=MM_Red,tag=MM_Class_Chicken,tag=MM_Chicken_Song_Speed,scores={MM_Chicken_Song=0}] as @a[tag=MM_Red,distance=..5] run attribute @s minecraft:movement_speed modifier remove mob_madness:1

tag @a[tag=MM_Class_Chicken,tag=MM_Chicken_Song_Speed,scores={MM_Chicken_Song=0}] remove MM_Chicken_Song_Speed