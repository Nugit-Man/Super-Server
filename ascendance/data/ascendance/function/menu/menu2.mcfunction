item replace entity @s inventory.0 with minecraft:air
item replace entity @s inventory.1 with minecraft:paper[custom_name={text:"Small Maps",italic:false}]
item replace entity @s inventory.2 with minecraft:sandstone[custom_name={text:"Desert Tomb",italic:false},lore=[{text:"Par: 0:45",color:gray}]]
item replace entity @s inventory.3 with minecraft:white_concrete[custom_name={text:"The Cube",italic:false},lore=[{text:"Par: 0:50",color:gray}]]
item replace entity @s inventory.4 with minecraft:smooth_stone[custom_name={text:"The Club",italic:false},lore=[{text:"Par: 0:30",color:gray}]]
item replace entity @s inventory.5 with minecraft:air
item replace entity @s inventory.6 with minecraft:air
item replace entity @s inventory.7 with minecraft:chorus_fruit[custom_name={text:"Random",italic:false},custom_model_data={strings:['Random']}]
item replace entity @s inventory.8 with minecraft:air
item replace entity @s inventory.9 with minecraft:air
item replace entity @s inventory.10 with minecraft:paper[custom_name={text:"Medium Maps",italic:false}]
item replace entity @s inventory.11 with minecraft:black_concrete[custom_name={text:"Tabletop",italic:false},lore=[{text:"Par: 0:40",color:gray}]]
item replace entity @s inventory.12 with minecraft:blue_ice[custom_name={text:"Ice Spikes",italic:false},lore=[{text:"Par: 0:45",color:gray}]]
item replace entity @s inventory.13 with minecraft:chiseled_sandstone[custom_name={text:"Colosseum",italic:false},lore=[{text:"Par: 1:00",color:gray}]]
item replace entity @s inventory.14 with minecraft:air
item replace entity @s inventory.15 with minecraft:air
item replace entity @s inventory.16 with minecraft:air
item replace entity @s inventory.17 with minecraft:air
item replace entity @s inventory.18 with minecraft:air
item replace entity @s inventory.19 with minecraft:paper[custom_name={text:"Large Maps",italic:false}]
item replace entity @s inventory.20 with minecraft:polished_andesite[custom_name={text:"Brutalism",italic:false},lore=[{text:"Par: 0:55",color:gray}]]
item replace entity @s inventory.21 with minecraft:grass_block[custom_name={text:"Jungle Pikes",italic:false},lore=[{text:"Par: 1:00",color:gray}]]
item replace entity @s inventory.22 with minecraft:granite[custom_name={text:"Bridge",italic:false},lore=[{text:"Par: 0:50",color:gray}]]
item replace entity @s inventory.23 with minecraft:air
item replace entity @s inventory.24 with minecraft:air
item replace entity @s inventory.25 with minecraft:barrier[custom_name={text:"Cancel",italic:false}]
item replace entity @s inventory.26 with minecraft:air


#In use bc a multipler match is taking place
execute if score $ AS_Map_DesertTomb matches 100.. run item replace entity @s inventory.2 with minecraft:bedrock[custom_name={text:"In Use",italic:false}]
execute if score $ AS_Map_Cube matches 100.. run item replace entity @s inventory.3 with minecraft:bedrock[custom_name={text:"In Use",italic:false}]
execute if score $ AS_Map_Club matches 100.. run item replace entity @s inventory.4 with minecraft:bedrock[custom_name={text:"In Use",italic:false}]
execute if score $ AS_Map_Tabletop matches 100.. run item replace entity @s inventory.11 with minecraft:bedrock[custom_name={text:"In Use",italic:false}]
execute if score $ AS_Map_IceSpikes matches 100.. run item replace entity @s inventory.12 with minecraft:bedrock[custom_name={text:"In Use",italic:false}]
execute if score $ AS_Map_Colosseum matches 100.. run item replace entity @s inventory.13 with minecraft:bedrock[custom_name={text:"In Use",italic:false}]
execute if score $ AS_Map_Brutalism matches 100.. run item replace entity @s inventory.20 with minecraft:bedrock[custom_name={text:"In Use",italic:false}]
execute if score $ AS_Map_JunglePikes matches 100.. run item replace entity @s inventory.21 with minecraft:bedrock[custom_name={text:"In Use",italic:false}]
execute if score $ AS_Map_Bridge matches 100.. run item replace entity @s inventory.22 with minecraft:bedrock[custom_name={text:"In Use",italic:false}]




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
execute as @a[scores={MAIN_Game=1}] store result score @s AS_Select run clear @s chiseled_sandstone 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Menu 1
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Map 4
clear @a[scores={MAIN_Game=1,AS_Select=2}]

scoreboard players set @a[scores={MAIN_Game=1}] AS_Select 0
execute as @a[scores={MAIN_Game=1}] store result score @s AS_Select run clear @s smooth_stone 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Menu 1
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Map 5
clear @a[scores={MAIN_Game=1,AS_Select=2}]

scoreboard players set @a[scores={MAIN_Game=1}] AS_Select 0
execute as @a[scores={MAIN_Game=1}] store result score @s AS_Select run clear @s white_concrete 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Menu 1
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Map 10
clear @a[scores={MAIN_Game=1,AS_Select=2}]

scoreboard players set @a[scores={MAIN_Game=1}] AS_Select 0
execute as @a[scores={MAIN_Game=1}] store result score @s AS_Select run clear @s blue_ice 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Menu 1
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Map 11
clear @a[scores={MAIN_Game=1,AS_Select=2}]

scoreboard players set @a[scores={MAIN_Game=1}] AS_Select 0
execute as @a[scores={MAIN_Game=1}] store result score @s AS_Select run clear @s grass_block 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Menu 1
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Map 12
clear @a[scores={MAIN_Game=1,AS_Select=2}]

scoreboard players set @a[scores={MAIN_Game=1}] AS_Select 0
execute as @a[scores={MAIN_Game=1}] store result score @s AS_Select run clear @s granite 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Menu 1
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Map 13
clear @a[scores={MAIN_Game=1,AS_Select=2}]

scoreboard players set @a[scores={MAIN_Game=1}] AS_Select 0
execute as @a[scores={MAIN_Game=1}] store result score @s AS_Select run clear @s chorus_fruit 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Menu 1
execute as @a[scores={MAIN_Game=1,AS_Select=2}] store result score @s AS_Map run random value 1..9
scoreboard players add @a[scores={MAIN_Game=1,AS_Select=2,AS_Map=6..}] AS_Map 4
clear @a[scores={MAIN_Game=1,AS_Select=2}]