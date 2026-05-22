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
item replace entity @s inventory.10 with minecraft:mace[custom_name={text:"Mace Masters",italic:false},tooltip_display={hidden_components:["attribute_modifiers"]},rarity="common"]
item replace entity @s inventory.11 with minecraft:stone[custom_name={text:"Final Island",italic:false}]
item replace entity @s inventory.12 with minecraft:diamond_sword[custom_name={text:"Gorbino",italic:false},tooltip_display={hidden_components:["attribute_modifiers"]}]
item replace entity @s inventory.13 with minecraft:air
item replace entity @s inventory.14 with minecraft:grass_block[custom_name={text:"Skyblock",italic:false}]
item replace entity @s inventory.15 with minecraft:bow[custom_name={text:"Ascendance",italic:false}]
item replace entity @s inventory.16 with minecraft:diorite[custom_name={text:"Random Item Challenge",italic:false}]
item replace entity @s inventory.17 with minecraft:air
item replace entity @s inventory.18 with minecraft:air
item replace entity @s inventory.19 with minecraft:air
item replace entity @s inventory.20 with minecraft:air
item replace entity @s inventory.21 with minecraft:air
item replace entity @s inventory.22 with minecraft:barrier[custom_name={text:"Back",italic:false},rarity="common"]
item replace entity @s inventory.23 with minecraft:air
item replace entity @s inventory.24 with minecraft:air
item replace entity @s inventory.25 with minecraft:air
item replace entity @s inventory.26 with minecraft:air

scoreboard players set @a[scores={MAIN_Game=0}] MAIN_Select 0
execute as @a[scores={MAIN_Game=0}] store result score @s MAIN_Select run clear @s mace 0
tag @a[scores={MAIN_Game=0,MAIN_Select=2}] add GoTo_Mace_Masters
clear @a[scores={MAIN_Game=0,MAIN_Select=2}]

scoreboard players set @a[scores={MAIN_Game=0}] MAIN_Select 0
execute as @a[scores={MAIN_Game=0}] store result score @s MAIN_Select run clear @s stone 0
tag @a[scores={MAIN_Game=0,MAIN_Select=2}] add GoTo_Final_Island
clear @a[scores={MAIN_Game=0,MAIN_Select=2}]

scoreboard players set @a[scores={MAIN_Game=0}] MAIN_Select 0
execute as @a[scores={MAIN_Game=0}] store result score @s MAIN_Select run clear @s diamond_sword 0
tag @a[scores={MAIN_Game=0,MAIN_Select=2}] add GoTo_Gorbino
clear @a[scores={MAIN_Game=0,MAIN_Select=2}]

scoreboard players set @a[scores={MAIN_Game=0}] MAIN_Select 0
execute as @a[scores={MAIN_Game=0}] store result score @s MAIN_Select run clear @s grass_block 0
tag @a[scores={MAIN_Game=0,MAIN_Select=2}] add GoTo_Skyblock
clear @a[scores={MAIN_Game=0,MAIN_Select=2}]

scoreboard players set @a[scores={MAIN_Game=0}] MAIN_Select 0
execute as @a[scores={MAIN_Game=0}] store result score @s MAIN_Select run clear @s bow 0
tag @a[scores={MAIN_Game=0,MAIN_Select=2}] add GoTo_Ascendance
clear @a[scores={MAIN_Game=0,MAIN_Select=2}]

scoreboard players set @a[scores={MAIN_Game=0}] MAIN_Select 0
execute as @a[scores={MAIN_Game=0}] store result score @s MAIN_Select run clear @s diorite 0
tag @a[scores={MAIN_Game=0,MAIN_Select=2}] add GoTo_RIC
clear @a[scores={MAIN_Game=0,MAIN_Select=2}]

scoreboard players set @a[scores={MAIN_Game=0}] MAIN_Select 0
execute as @a[scores={MAIN_Game=0}] store result score @s MAIN_Select run clear @s barrier 0
scoreboard players set @a[scores={MAIN_Game=0,MAIN_Select=2}] MAIN_Menu 0
clear @a[scores={MAIN_Game=0,MAIN_Select=2}]


