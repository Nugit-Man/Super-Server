item replace entity @s inventory.0 with minecraft:air
item replace entity @s inventory.1 with minecraft:air
item replace entity @s inventory.2 with minecraft:air
item replace entity @s inventory.3 with minecraft:air
item replace entity @s inventory.4 with minecraft:chorus_fruit[custom_name={text:"Random",italic:false},custom_model_data={strings:['Random']}]
item replace entity @s inventory.5 with minecraft:air
item replace entity @s inventory.6 with minecraft:air
item replace entity @s inventory.7 with minecraft:air
item replace entity @s inventory.8 with minecraft:air
item replace entity @s inventory.9 with minecraft:air
item replace entity @s inventory.10 with minecraft:sandstone[custom_name={text:"Desert Tomb:",italic:false}]
item replace entity @s inventory.11 with minecraft:air
item replace entity @s inventory.12 with minecraft:black_concrete[custom_name={text:"Tabletop:",italic:false}]
item replace entity @s inventory.13 with minecraft:air
item replace entity @s inventory.14 with minecraft:polished_andesite[custom_name={text:"Brutalism:",italic:false}]
item replace entity @s inventory.15 with minecraft:air
item replace entity @s inventory.16 with minecraft:grass_block[custom_name={text:"Jungle Pikes:",italic:false}]
item replace entity @s inventory.17 with minecraft:air
item replace entity @s inventory.18 with minecraft:air
item replace entity @s inventory.19 with minecraft:air
item replace entity @s inventory.20 with minecraft:air
item replace entity @s inventory.21 with minecraft:air
item replace entity @s inventory.22 with barrier[custom_name={text:"Cancel",italic:false}]
item replace entity @s inventory.23 with minecraft:air
item replace entity @s inventory.24 with minecraft:air
item replace entity @s inventory.25 with minecraft:air
item replace entity @s inventory.26 with minecraft:air

scoreboard players set @a[scores={MAIN_Game=1}] AS_Select 0
execute as @a[scores={MAIN_Game=1}] store result score @s AS_Select run clear @s barrier 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Menu 1
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Map 0
clear @a[scores={MAIN_Game=1,AS_Select=2}]

scoreboard players set @a[scores={MAIN_Game=1}] AS_Select 0
execute as @a[scores={MAIN_Game=1}] store result score @s AS_Select run clear @s sandstone 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Menu 1
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Map 1
clear @a[scores={MAIN_Game=1,AS_Select=2}]

scoreboard players set @a[scores={MAIN_Game=1}] AS_Select 0
execute as @a[scores={MAIN_Game=1}] store result score @s AS_Select run clear @s black_concrete 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Menu 1
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Map 2
clear @a[scores={MAIN_Game=1,AS_Select=2}]

scoreboard players set @a[scores={MAIN_Game=1}] AS_Select 0
execute as @a[scores={MAIN_Game=1}] store result score @s AS_Select run clear @s polished_andesite 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Menu 1
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Map 3
clear @a[scores={MAIN_Game=1,AS_Select=2}]

scoreboard players set @a[scores={MAIN_Game=1}] AS_Select 0
execute as @a[scores={MAIN_Game=1}] store result score @s AS_Select run clear @s grass_block 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Menu 1
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Map 3
clear @a[scores={MAIN_Game=1,AS_Select=2}]

scoreboard players set @a[scores={MAIN_Game=1}] AS_Select 0
execute as @a[scores={MAIN_Game=1}] store result score @s AS_Select run clear @s chorus_fruit 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Menu 1
execute as @a[scores={MAIN_Game=1,AS_Select=2}] store result score @s AS_Map run random value 1..4
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2,AS_Map=4}] AS_Map 12
clear @a[scores={MAIN_Game=1,AS_Select=2}]