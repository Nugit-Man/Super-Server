scoreboard players set Kills AS_Domination 0
scoreboard players set Deaths AS_Domination 0
execute as @a[scores={MAIN_Game=1,AS_Mode=1,AS_Kills=1..}] run scoreboard players add Kills AS_Domination 1
execute as @a[scores={MAIN_Game=1,AS_Mode=1,AS_Deaths=1..}] run scoreboard players add Deaths AS_Domination 1

execute if score Kills AS_Domination matches 1 if score Kills AS_Domination matches 1 run function ascendance:domination/run