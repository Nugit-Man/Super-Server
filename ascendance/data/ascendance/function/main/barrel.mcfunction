#Barrel 
execute in ascendance:game run item replace block 61 22 60 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in ascendance:game run item replace block 13 21 16 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in ascendance:game run item replace block 4 22 51 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in ascendance:game run item replace block 73 31 49 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in ascendance:game run item replace block 1020 0 49 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in ascendance:game run item replace block 2034 40 110 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in ascendance:game run item replace block 3064 5 30 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in ascendance:game run item replace block 12011 14 42 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in ascendance:game run item replace block 13075 20 68 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in ascendance:game run item replace block 10996 13 71 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]


execute in ascendance:game at @e[type=marker,tag=AS_Barrel_1] run scoreboard players set @a[distance=..7] AS_Barrel_Pos 1
execute in ascendance:game at @e[type=marker,tag=AS_Barrel_2] run scoreboard players set @a[distance=..7] AS_Barrel_Pos 2
execute in ascendance:game at @e[type=marker,tag=AS_Barrel_3] run scoreboard players set @a[distance=..7] AS_Barrel_Pos 3
execute in ascendance:game at @e[type=marker,tag=AS_Barrel_4] run scoreboard players set @a[distance=..7] AS_Barrel_Pos 4
execute in ascendance:game at @e[type=marker,tag=AS_Barrel_Desert_Tomb] run scoreboard players set @a[distance=..7] AS_Barrel_Pos 5
execute in ascendance:game at @e[type=marker,tag=AS_Barrel_Tabletop] run scoreboard players set @a[distance=..7] AS_Barrel_Pos 6
execute in ascendance:game at @e[type=marker,tag=AS_Barrel_Brutalism] run scoreboard players set @a[distance=..7] AS_Barrel_Pos 7
execute in ascendance:game at @e[type=marker,tag=AS_Barrel_Jungle_Pikes] run scoreboard players set @a[distance=..10] AS_Barrel_Pos 8
execute in ascendance:game at @e[type=marker,tag=AS_Barrel_Bridge] run scoreboard players set @a[distance=..7] AS_Barrel_Pos 9
execute in ascendance:game at @e[type=marker,tag=AS_Ice_Spikes] run scoreboard players set @a[distance=..7] AS_Barrel_Pos 10

execute as @a[scores={MAIN_Game=1}] run execute store result score @s AS_Barrel_Check run clear @s sunflower
advancement grant @a[scores={MAIN_Game=1,AS_Barrel_Check=1..,AS_Barrel_Pos=1}] only ascendance:berrel/barrel1
advancement grant @a[scores={MAIN_Game=1,AS_Barrel_Check=1..,AS_Barrel_Pos=2}] only ascendance:berrel/barrel2
advancement grant @a[scores={MAIN_Game=1,AS_Barrel_Check=1..,AS_Barrel_Pos=3}] only ascendance:berrel/barrel3
advancement grant @a[scores={MAIN_Game=1,AS_Barrel_Check=1..,AS_Barrel_Pos=4}] only ascendance:berrel/barrel4
advancement grant @a[scores={MAIN_Game=1,AS_Barrel_Check=1..,AS_Barrel_Pos=5}] only ascendance:berrel/barreldt
advancement grant @a[scores={MAIN_Game=1,AS_Barrel_Check=1..,AS_Barrel_Pos=6}] only ascendance:berrel/barreltt
advancement grant @a[scores={MAIN_Game=1,AS_Barrel_Check=1..,AS_Barrel_Pos=7}] only ascendance:berrel/barrelb
advancement grant @a[scores={MAIN_Game=1,AS_Barrel_Check=1..,AS_Barrel_Pos=8}] only ascendance:berrel/barreljp
advancement grant @a[scores={MAIN_Game=1,AS_Barrel_Check=1..,AS_Barrel_Pos=9}] only ascendance:berrel/barrelbr
advancement grant @a[scores={MAIN_Game=1,AS_Barrel_Check=1..,AS_Barrel_Pos=10}] only ascendance:berrel/barrelis
  