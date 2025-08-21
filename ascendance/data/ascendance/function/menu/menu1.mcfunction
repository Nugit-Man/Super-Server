item replace entity @s inventory.0 with minecraft:air
item replace entity @s inventory.1 with minecraft:air
item replace entity @s inventory.2 with minecraft:air
item replace entity @s inventory.3 with minecraft:air
item replace entity @s inventory.4 with minecraft:air
item replace entity @s inventory.5 with minecraft:air
item replace entity @s inventory.6 with minecraft:air
item replace entity @s inventory.7 with minecraft:air
item replace entity @s inventory.8 with minecraft:air
item replace entity @s inventory.9 with minecraft:air
item replace entity @s inventory.10 with minecraft:grass_block[custom_name={text:"Select Map",italic:false}]
item replace entity @s inventory.11 with minecraft:air
item replace entity @s inventory.12 with minecraft:air
#Gaming
item replace entity @s[scores={AS_Map=0}] inventory.13 with minecraft:black_concrete[custom_name={text:"Select a map",italic:false}]
item replace entity @s[scores={AS_Map=1..}] inventory.13 with minecraft:green_concrete[custom_name={text:"Click to start",italic:false}]
execute if score checkfor starting matches 1 run item replace entity @s[scores={AS_Map=1..}] inventory.13 with minecraft:red_concrete[custom_name={text:"Cancel",italic:false}]

item replace entity @s inventory.14 with minecraft:air
item replace entity @s inventory.15 with minecraft:air
item replace entity @s inventory.16 with minecraft:paper[custom_name={text:"Change Rules",italic:false}]
item replace entity @s inventory.17 with minecraft:air
item replace entity @s inventory.18 with minecraft:air
item replace entity @s inventory.19 with minecraft:air
item replace entity @s inventory.20 with minecraft:air
item replace entity @s inventory.21 with minecraft:air
item replace entity @s inventory.22 with minecraft:barrier[custom_name={text:"Go Back",italic:false}]
item replace entity @s inventory.23 with minecraft:air
item replace entity @s inventory.24 with minecraft:air
item replace entity @s inventory.25 with minecraft:air
item replace entity @s inventory.26 with minecraft:air


scoreboard players set @a[scores={MAIN_Game=1}] AS_Select 0
execute as @a[scores={MAIN_Game=1}] store result score @s AS_Select run clear @s barrier 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Menu 0
clear @a[scores={MAIN_Game=1,AS_Select=2}]

scoreboard players set @a[scores={MAIN_Game=1}] AS_Select 0
execute as @a[scores={MAIN_Game=1}] store result score @s AS_Select run clear @s grass_block 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Menu 2
clear @a[scores={MAIN_Game=1,AS_Select=2}]

scoreboard players set @a[scores={MAIN_Game=1}] AS_Select 0
execute as @a[scores={MAIN_Game=1}] store result score @s AS_Select run clear @s paper 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Menu 3
clear @a[scores={MAIN_Game=1,AS_Select=2}]