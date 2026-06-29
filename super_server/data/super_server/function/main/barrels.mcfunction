#Barrels
execute in super_server:lobby run item replace block -44 -59 -20 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in super_server:lobby run item replace block 8 -59 8 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in super_server:lobby run item replace block -6 -58 -28 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in super_server:lobby run item replace block -31 -57 8 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]

execute in super_server:lobby at @e[type=marker,tag=MAIN_Barrel_Wall] run scoreboard players set @a[distance=..7] MAIN_Barrel_Pos 1
execute in super_server:lobby at @e[type=marker,tag=MAIN_Barrel_Well] run scoreboard players set @a[distance=..7] MAIN_Barrel_Pos 2
execute in super_server:lobby at @e[type=marker,tag=MAIN_Barrel_Wall_2] run scoreboard players set @a[distance=..7] MAIN_Barrel_Pos 3
execute in super_server:lobby at @e[type=marker,tag=MAIN_Barrel_Well_2] run scoreboard players set @a[distance=..7] MAIN_Barrel_Pos 4

execute as @a[scores={MAIN_Game=0}] run execute store result score @s MAIN_Barrel_Check run clear @s sunflower
advancement grant @a[scores={MAIN_Game=0,MAIN_Barrel_Check=1..,MAIN_Barrel_Pos=1}] only super_server:barrel/hidden/wall
advancement grant @a[scores={MAIN_Game=0,MAIN_Barrel_Check=1..,MAIN_Barrel_Pos=2}] only super_server:barrel/hidden/well
advancement grant @a[scores={MAIN_Game=0,MAIN_Barrel_Check=1..,MAIN_Barrel_Pos=3}] only super_server:barrel/hidden/wall_2
advancement grant @a[scores={MAIN_Game=0,MAIN_Barrel_Check=1..,MAIN_Barrel_Pos=4}] only super_server:barrel/hidden/well_2
