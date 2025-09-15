execute store result score @s GB_Barrel_Check run random value 1..5
execute if score @s GB_Barrel_Check matches 1 run schedule function gorbino:abilities/cancer2 300s
execute if score @s GB_Barrel_Check matches 2 run schedule function gorbino:abilities/cancer2 200s
execute if score @s GB_Barrel_Check matches 3 run schedule function gorbino:abilities/cancer2 150s
execute if score @s GB_Barrel_Check matches 4 run schedule function gorbino:abilities/cancer2 120s
execute if score @s GB_Barrel_Check matches 5 run schedule function gorbino:abilities/cancer2 500s
tag @s add GB_cancerkill
clear @a[scores={MAIN_Game=2}] prismarine_crystals