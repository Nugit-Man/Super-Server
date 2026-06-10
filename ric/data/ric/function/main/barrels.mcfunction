

#Barrels
execute in ric:lobby run item replace block -19 -39 27 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in ric:lobby run item replace block -43 -42 -9 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in ric:lobby run item replace block -29 -39 -13 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]


execute in ric:lobby at @e[type=marker,tag=RIC_Barrel_1] run scoreboard players set @a[distance=..7] RIC_Barrel_Pos 1
execute in ric:lobby at @e[type=marker,tag=RIC_Barrel_2] run scoreboard players set @a[distance=..7] RIC_Barrel_Pos 2
execute in ric:lobby at @e[type=marker,tag=RIC_Barrel_3] run scoreboard players set @a[distance=..7] RIC_Barrel_Pos 3


execute as @a[scores={MAIN_Game=7}] run execute store result score @s RIC_Barrel_Check run clear @s sunflower
advancement grant @a[scores={MAIN_Game=7,RIC_Barrel_Check=1..,RIC_Barrel_Pos=1},nbt={Dimension:"ric:lobby"}] only ric:barrel/wall
advancement grant @a[scores={MAIN_Game=7,RIC_Barrel_Check=1..,RIC_Barrel_Pos=2},nbt={Dimension:"ric:lobby"}] only ric:barrel/tunel
advancement grant @a[scores={MAIN_Game=7,RIC_Barrel_Check=1..,RIC_Barrel_Pos=3},nbt={Dimension:"ric:lobby"}] only ric:barrel/trickshot
