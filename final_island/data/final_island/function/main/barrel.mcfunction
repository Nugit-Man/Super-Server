execute in final_island:game at @e[type=marker,tag=FI_Barrel_Waterfall] run scoreboard players set @a[distance=..7] FI_Barrel_Pos 1
execute in final_island:game at @e[type=marker,tag=FI_Barrel_Gravyard_Tree] run scoreboard players set @a[distance=..7] FI_Barrel_Pos 2
execute in final_island:game at @e[type=marker,tag=FI_Barrel_Gravyard] run scoreboard players set @a[distance=..7] FI_Barrel_Pos 3
execute in final_island:game at @e[type=marker,tag=FI_Barrel_Deep_Under_Island] run scoreboard players set @a[distance=..7] FI_Barrel_Pos 4
execute in final_island:game at @e[type=marker,tag=FI_Barrel_Under_Island] run scoreboard players set @a[distance=..7] FI_Barrel_Pos 5
execute in final_island:game at @e[type=marker,tag=FI_Barrel_Jungle_Bridge] run scoreboard players set @a[distance=..7] FI_Barrel_Pos 6
execute in final_island:game at @e[type=marker,tag=FI_Barrel_Jungle_Tree] run scoreboard players set @a[distance=..7] FI_Barrel_Pos 7
execute in final_island:game at @e[type=marker,tag=FI_Barrel_OOB] run scoreboard players set @a[distance=..7] FI_Barrel_Pos 8
execute in final_island:game at @e[type=marker,tag=FI_Barrel_Horse] run scoreboard players set @a[distance=..7] FI_Barrel_Pos 9
execute in final_island:game at @e[type=marker,tag=FI_Barrel_Lava] run scoreboard players set @a[distance=..7] FI_Barrel_Pos 10
execute in final_island:game at @e[type=marker,tag=FI_Barrel_Shop] run scoreboard players set @a[distance=..7] FI_Barrel_Pos 11
execute in final_island:game at @e[type=marker,tag=FI_Barrel_Balloon] run scoreboard players set @a[distance=..7] FI_Barrel_Pos 12
execute in final_island:game at @e[type=marker,tag=FI_Barrel_Root] run scoreboard players set @a[distance=..7] FI_Barrel_Pos 13

execute as @a[scores={MAIN_Game=2}] run execute store result score @s FI_Barrel_Check run clear @s sunflower
advancement grant @a[scores={MAIN_Game=2,FI_Barrel_Check=1..,FI_Barrel_Pos=1}] only final_island:barrel/waterfall
advancement grant @a[scores={MAIN_Game=2,FI_Barrel_Check=1..,FI_Barrel_Pos=2}] only final_island:barrel/graveyard_tree
advancement grant @a[scores={MAIN_Game=2,FI_Barrel_Check=1..,FI_Barrel_Pos=3}] only final_island:barrel/graveyard
advancement grant @a[scores={MAIN_Game=2,FI_Barrel_Check=1..,FI_Barrel_Pos=4}] only final_island:barrel/deep
advancement grant @a[scores={MAIN_Game=2,FI_Barrel_Check=1..,FI_Barrel_Pos=5}] only final_island:barrel/under
advancement grant @a[scores={MAIN_Game=2,FI_Barrel_Check=1..,FI_Barrel_Pos=6}] only final_island:barrel/bridge
advancement grant @a[scores={MAIN_Game=2,FI_Barrel_Check=1..,FI_Barrel_Pos=7}] only final_island:barrel/jungle_tree
advancement grant @a[scores={MAIN_Game=2,FI_Barrel_Check=1..,FI_Barrel_Pos=8}] only final_island:barrel/oob
advancement grant @a[scores={MAIN_Game=2,FI_Barrel_Check=1..,FI_Barrel_Pos=9}] only final_island:barrel/horse
advancement grant @a[scores={MAIN_Game=2,FI_Barrel_Check=1..,FI_Barrel_Pos=10}] only final_island:barrel/lava
advancement grant @a[scores={MAIN_Game=2,FI_Barrel_Check=1..,FI_Barrel_Pos=11}] only final_island:barrel/shop
advancement grant @a[scores={MAIN_Game=2,FI_Barrel_Check=1..,FI_Barrel_Pos=12}] only final_island:barrel/balloon

execute in final_island:game run item replace block 0 11 -1 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block 14 -2 63 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block 36 -13 57 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block 28 -26 65 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block 53 18 101 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block 43 9 113 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block -36 24 72 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block -58 -1 74 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block -97 23 -16 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block -117 9 -76 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block 69013 304 56 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block 69013 177 36 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block 69003 27 23 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
