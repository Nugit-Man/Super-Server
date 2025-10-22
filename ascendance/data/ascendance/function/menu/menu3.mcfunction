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
item replace entity @s inventory.10 with minecraft:air
item replace entity @s inventory.11 with minecraft:skeleton_skull[custom_name={text:"Deathmatch",italic:false},lore=[{text:"Kill others to gain points",italic:false},{text:"First to 25 points wins!",italic:false}]]
item replace entity @s inventory.12 with minecraft:air
item replace entity @s inventory.13 with minecraft:air
item replace entity @s inventory.14 with minecraft:air
item replace entity @s inventory.15 with minecraft:bow[custom_name={text:"Training",italic:false},lore=[{text:"Practice by yourself"}]]
item replace entity @s inventory.16 with minecraft:air
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
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Menu 1
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Gamemode 0
clear @a[scores={MAIN_Game=1,AS_Select=2}]

scoreboard players set @a[scores={MAIN_Game=1}] AS_Select 0
execute as @a[scores={MAIN_Game=1}] store result score @s AS_Select run clear @s skeleton_skull 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Menu 1
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Gamemode 1
clear @a[scores={MAIN_Game=1,AS_Select=2}]

scoreboard players set @a[scores={MAIN_Game=1}] AS_Select 0
execute as @a[scores={MAIN_Game=1}] store result score @s AS_Select run clear @s bow 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Menu 1
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Gamemode 100
clear @a[scores={MAIN_Game=1,AS_Select=2}]