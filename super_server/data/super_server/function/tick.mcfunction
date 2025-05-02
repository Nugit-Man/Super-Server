#Make it so they can not trample farmland
execute as @a at @s if block ~ ~-0.5 ~ farmland run effect give @s slow_falling 1 1 true

#change the score of MAIN_Game depending on what world they are in
#0 - lobby
#1 - Ascendance
#2 - Final Island
#3 - Gorbino
#4 - Parkor

execute as @a in super_server:lobby run scoreboard players set @s MAIN_Game 0
execute as @a in ascendance:game run scoreboard players set @s MAIN_Game 1
execute as @a in final_island:game run scoreboard players set @s MAIN_Game 2
execute as @a in gorbino:game run scoreboard players set @s MAIN_Game 3
execute as @a in gorbino:lobby run scoreboard players set @s MAIN_Game 3
execute as @a in parkor:game run scoreboard players set @s MAIN_Game 4