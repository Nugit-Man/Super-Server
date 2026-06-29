execute at @s[scores={MM_Chicken_Song=0}] run playsound mob_madness.lava_chicken master @a ~ ~ ~
tag @s add MM_Chicken_Song_Regen
scoreboard players set @s MM_Chicken_Song 3
scoreboard players set @s MM_Chicken_Song_Type 1