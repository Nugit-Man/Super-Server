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
execute in final_island:game at @e[type=marker,tag=FI_Barrel_Creeper] run scoreboard players set @a[distance=..7] FI_Barrel_Pos 14
execute in final_island:game at @e[type=marker,tag=FI_Barrel_Many] run scoreboard players set @a[distance=..7] FI_Barrel_Pos 15
execute in final_island:game at @e[type=marker,tag=FI_Barrel_Pillar] run scoreboard players set @a[distance=..7] FI_Barrel_Pos 16
execute in final_island:game at @e[type=marker,tag=FI_Barrel_Smith] run scoreboard players set @a[distance=..7] FI_Barrel_Pos 17
execute in final_island:game at @e[type=marker,tag=FI_Barrel_Spike] run scoreboard players set @a[distance=..7] FI_Barrel_Pos 18
execute in final_island:game at @e[type=marker,tag=FI_Barrel_Sand] run scoreboard players set @a[distance=..7] FI_Barrel_Pos 19
execute in final_island:game at @e[type=marker,tag=FI_Barrel_Boss] run scoreboard players set @a[distance=..7] FI_Barrel_Pos 20
execute in final_island:game at @e[type=marker,tag=FI_Barrel_Chicken] run scoreboard players set @a[distance=..7] FI_Barrel_Pos 21
execute in final_island:game at @e[type=marker,tag=FI_Barrel_Roof] run scoreboard players set @a[distance=..7] FI_Barrel_Pos 22
execute in final_island:game at @e[type=marker,tag=FI_Barrel_Stuck] run scoreboard players set @a[distance=..7] FI_Barrel_Pos 23
execute in final_island:game at @e[type=marker,tag=FI_Barrel_Porch] run scoreboard players set @a[distance=..7] FI_Barrel_Pos 24
execute in final_island:game at @e[type=marker,tag=FI_Barrel_Basket] run scoreboard players set @a[distance=..2] FI_Barrel_Pos 25
execute in final_island:game at @e[type=marker,tag=FI_Barrel_Bake] run scoreboard players set @a[distance=..7] FI_Barrel_Pos 26
execute in final_island:game at @e[type=marker,tag=FI_Barrel_Tower] run scoreboard players set @a[distance=..7] FI_Barrel_Pos 27
execute in final_island:game at @e[type=marker,tag=FI_Barrel_Inside] run scoreboard players set @a[distance=..7] FI_Barrel_Pos 28

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
advancement grant @a[scores={MAIN_Game=2,FI_Barrel_Check=1..,FI_Barrel_Pos=13}] only final_island:barrel/root
advancement grant @a[scores={MAIN_Game=2,FI_Barrel_Check=1..,FI_Barrel_Pos=14}] only final_island:barrel/creeper
advancement grant @a[scores={MAIN_Game=2,FI_Barrel_Check=1..,FI_Barrel_Pos=15}] only final_island:barrel/many
advancement grant @a[scores={MAIN_Game=2,FI_Barrel_Check=1..,FI_Barrel_Pos=16}] only final_island:barrel/arena
advancement grant @a[scores={MAIN_Game=2,FI_Barrel_Check=1..,FI_Barrel_Pos=17}] only final_island:barrel/smith
advancement grant @a[scores={MAIN_Game=2,FI_Barrel_Check=1..,FI_Barrel_Pos=18}] only final_island:barrel/spike
advancement grant @a[scores={MAIN_Game=2,FI_Barrel_Check=1..,FI_Barrel_Pos=19}] only final_island:barrel/sand
advancement grant @a[scores={MAIN_Game=2,FI_Barrel_Check=1..,FI_Barrel_Pos=20}] only final_island:barrel/boss
advancement grant @a[scores={MAIN_Game=2,FI_Barrel_Check=1..,FI_Barrel_Pos=21}] only final_island:barrel/chicken
advancement grant @a[scores={MAIN_Game=2,FI_Barrel_Check=1..,FI_Barrel_Pos=22}] only final_island:barrel/roof
advancement grant @a[scores={MAIN_Game=2,FI_Barrel_Check=1..,FI_Barrel_Pos=23}] only final_island:barrel/stuck
advancement grant @a[scores={MAIN_Game=2,FI_Barrel_Check=1..,FI_Barrel_Pos=24}] only final_island:barrel/porch
advancement grant @a[scores={MAIN_Game=2,FI_Barrel_Check=1..,FI_Barrel_Pos=25}] only final_island:barrel/basket
advancement grant @a[scores={MAIN_Game=2,FI_Barrel_Check=1..,FI_Barrel_Pos=26}] only final_island:barrel/bake
advancement grant @a[scores={MAIN_Game=2,FI_Barrel_Check=1..,FI_Barrel_Pos=27}] only final_island:barrel/tower
advancement grant @a[scores={MAIN_Game=2,FI_Barrel_Check=1..,FI_Barrel_Pos=28}] only final_island:barrel/inside

execute in final_island:game run item replace block 0 11 -1 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block 14 -2 63 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block 36 -13 57 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block 28 -26 65 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block 53 18 101 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block 43 9 113 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block -36 24 72 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block -58 -1 74 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block -97 23 -16 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block -116 9 -76 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block 69013 304 56 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block 69013 177 36 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block 69030 27 23 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block -29 -31 -50 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block 68971 143 26 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block 68977 100 66 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block 68983 306 54 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block 68973 28 -5 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block 102 10 -31 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block -31 -30 -44 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block -28 3 122 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block 68985 112 41 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block -125 2 -59 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block -103 3 13 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block 1 -2 -1 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block -71 -13 -75 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block -83 -8 -114 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in final_island:game run item replace block 22 -3 69 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
