#NOTE!! You lose AS_Welcome every time you rejoin the server!! Do not use this for important info!!
scoreboard players set @a[scores={MAIN_Game=1},tag=!AS_Welcome] AS_Map 0
scoreboard players set @a[scores={MAIN_Game=1},tag=!AS_Welcome] AS_Mode 0
scoreboard players set @a[scores={MAIN_Game=1},tag=!AS_Welcome] AS_Menu 0
scoreboard players set @a[scores={MAIN_Game=1},tag=!AS_Welcome] AS_Countdown 0
tag @a[scores={MAIN_Game=1},tag=!AS_Welcome] add AS_Welcome


effect give @a[scores={MAIN_Game=1}] saturation infinite 0 true


#Arrow Cleanup
execute at @a[scores={MAIN_Game=1}] run kill @e[type=arrow,distance=..50,nbt={Motion:[0d,0d,0d]}]


#Give the players menus
execute as @a[scores={MAIN_Game=1,AS_Menu=0,AS_Mode=0}] run function ascendance:menu/menu0
execute as @a[scores={MAIN_Game=1,AS_Menu=1,AS_Mode=0}] run function ascendance:menu/menu1
execute as @a[scores={MAIN_Game=1,AS_Menu=2,AS_Mode=0}] run function ascendance:menu/menu2
execute as @a[scores={MAIN_Game=1,AS_Menu=3,AS_Mode=0}] run function ascendance:menu/menu3


#Prevent a second round starting on the same map as one currently is use
execute if entity @a[scores={MAIN_Game=1,AS_Countdown=1..,AS_Map=1}] run scoreboard players set @a[scores={AS_Countdown=0,MAIN_Game=1,AS_Map=1}] AS_Map 0
execute if entity @a[scores={MAIN_Game=1,AS_Countdown=1..,AS_Map=2}] run scoreboard players set @a[scores={AS_Countdown=0,MAIN_Game=1,AS_Map=2}] AS_Map 0
execute if entity @a[scores={MAIN_Game=1,AS_Countdown=1..,AS_Map=3}] run scoreboard players set @a[scores={AS_Countdown=0,MAIN_Game=1,AS_Map=3}] AS_Map 0
execute if entity @a[scores={MAIN_Game=1,AS_Countdown=1..,AS_Map=12}] run scoreboard players set @a[scores={AS_Countdown=0,MAIN_Game=1,AS_Map=12}] AS_Map 0

#Run the thing if the map is in use
execute if score $ AS_Map_DesertTomb matches 100 run function ascendance:gaming/maps/desert_tomb/tick
execute if score $ AS_Map_Tabletop matches 100 run function ascendance:gaming/maps/tabletop/tick
execute if score $ AS_Map_Brutalism matches 100 run function ascendance:gaming/maps/brutalism/tick
execute if score $ AS_Map_JunglePikes matches 100 run function ascendance:gaming/maps/jungle_pikes/tick



#Reset Kills
scoreboard players set @a[scores={MAIN_Game=1}] AS_Kills 0


#kill on hit and remove hitting
kill @a[nbt={HurtTime:9s, Dimension:"ascendance:game"},scores={MAIN_Game=1}]
execute as @a[scores={MAIN_Game=1}] run attribute @s attack_damage base set -10


#Set up join game
scoreboard players enable @a[scores={MAIN_Game=1,AS_Mode=0}] AS_JoinGame
scoreboard players set @a[scores={MAIN_Game=1,AS_Mode=0,AS_JoinGame=1..}] AS_Countdown -1
tellraw @a[scores={MAIN_Game=1,AS_Mode=0,AS_JoinGame=1..}] "You have joined the game"
scoreboard players set @a[scores={MAIN_Game=1,AS_Mode=0}] AS_JoinGame 0


#Barrels
execute in ascendance:game run item replace block 61 22 60 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in ascendance:game run item replace block 13 21 16 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in ascendance:game run item replace block 4 22 51 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in ascendance:game run item replace block 73 31 49 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in ascendance:game run item replace block 1020 0 49 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in ascendance:game run item replace block 2034 40 110 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in ascendance:game run item replace block 3064 5 30 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in ascendance:game run item replace block 12011 14 42 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]

execute in ascendance:game at @e[type=marker,tag=AS_Barrel_1] run scoreboard players set @a[distance=..7] AS_Barrel_Pos 1
execute in ascendance:game at @e[type=marker,tag=AS_Barrel_2] run scoreboard players set @a[distance=..7] AS_Barrel_Pos 2
execute in ascendance:game at @e[type=marker,tag=AS_Barrel_3] run scoreboard players set @a[distance=..7] AS_Barrel_Pos 3
execute in ascendance:game at @e[type=marker,tag=AS_Barrel_4] run scoreboard players set @a[distance=..7] AS_Barrel_Pos 4
execute in ascendance:game at @e[type=marker,tag=AS_Barrel_Desert_Tomb] run scoreboard players set @a[distance=..7] AS_Barrel_Pos 5
execute in ascendance:game at @e[type=marker,tag=AS_Barrel_Tabletop] run scoreboard players set @a[distance=..7] AS_Barrel_Pos 6
execute in ascendance:game at @e[type=marker,tag=AS_Barrel_Brutalism] run scoreboard players set @a[distance=..7] AS_Barrel_Pos 7
execute in ascendance:game at @e[type=marker,tag=AS_Barrel_Jungle_Pikes] run scoreboard players set @a[distance=..7] AS_Barrel_Pos 8

execute as @a[scores={MAIN_Game=1}] run execute store result score @s AS_Barrel_Check run clear @s sunflower
advancement grant @a[scores={MAIN_Game=1,AS_Barrel_Check=1..,AS_Barrel_Pos=1}] only ascendance:berrel/barrel1
advancement grant @a[scores={MAIN_Game=1,AS_Barrel_Check=1..,AS_Barrel_Pos=2}] only ascendance:berrel/barrel2
advancement grant @a[scores={MAIN_Game=1,AS_Barrel_Check=1..,AS_Barrel_Pos=3}] only ascendance:berrel/barrel3
advancement grant @a[scores={MAIN_Game=1,AS_Barrel_Check=1..,AS_Barrel_Pos=4}] only ascendance:berrel/barrel4
advancement grant @a[scores={MAIN_Game=1,AS_Barrel_Check=1..,AS_Barrel_Pos=5}] only ascendance:berrel/barreldt
advancement grant @a[scores={MAIN_Game=1,AS_Barrel_Check=1..,AS_Barrel_Pos=6}] only ascendance:berrel/barreltt
advancement grant @a[scores={MAIN_Game=1,AS_Barrel_Check=1..,AS_Barrel_Pos=7}] only ascendance:berrel/barrelb
advancement grant @a[scores={MAIN_Game=1,AS_Barrel_Check=1..,AS_Barrel_Pos=8}] only ascendance:berrel/barreljp



#Stop players from dropping items
execute at @a[scores={MAIN_Game=1}] run kill @e[type=item,distance=..10]