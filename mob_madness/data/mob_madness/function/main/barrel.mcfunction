#Barrel 
execute in mob_madness:game run item replace block -944 51 47 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in mob_madness:game run item replace block -958 37 47 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in mob_madness:game run item replace block -936 13 17 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in mob_madness:game run item replace block -944 13 14 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]


execute in mob_madness:game at @e[type=marker,tag=MM_Barrel_1] run scoreboard players set @a[distance=..7] MM_Barrel_Pos 1
execute in mob_madness:game at @e[type=marker,tag=MM_Barrel_2] run scoreboard players set @a[distance=..7] MM_Barrel_Pos 2
execute in mob_madness:game at @e[type=marker,tag=MM_Barrel_3] run scoreboard players set @a[distance=..7] MM_Barrel_Pos 3
execute in mob_madness:game at @e[type=marker,tag=MM_Barrel_4] run scoreboard players set @a[distance=..7] MM_Barrel_Pos 4


execute as @a[scores={MAIN_Game=9}] run execute store result score @s MM_Barrel_Check run clear @s sunflower
advancement grant @a[scores={MAIN_Game=9,MM_Barrel_Check=1..,MM_Barrel_Pos=1}] only mob_madness:barrel/tip
advancement grant @a[scores={MAIN_Game=9,MM_Barrel_Check=1..,MM_Barrel_Pos=2}] only mob_madness:barrel/light
advancement grant @a[scores={MAIN_Game=9,MM_Barrel_Check=1..,MM_Barrel_Pos=3}] only mob_madness:barrel/peep
advancement grant @a[scores={MAIN_Game=9,MM_Barrel_Check=1..,MM_Barrel_Pos=4}] only mob_madness:barrel/jump
