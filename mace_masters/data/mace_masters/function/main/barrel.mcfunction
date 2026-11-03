#Barrel 
execute in mace_masters:lobby run item replace block 12 -1 68 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]


execute in mace_masters:lobby at @e[type=marker,tag=Mace_Barrel_1] run scoreboard players set @a[distance=..7] MM_Barrel_Pos 1


execute as @a[scores={MAIN_Game=6}] run execute store result score @s MM_Barrel_Check run clear @s sunflower
advancement grant @a[scores={MAIN_Game=6,MM_Barrel_Check=1..,MM_Barrel_Pos=1}] only mace_masters:1