#Make it so they can not trample farmland
execute as @a at @s if block ~ ~-0.5 ~ farmland run effect give @s slow_falling 1 1 true

#change the score of MAIN_Game depending on what world they are in
#0 - lobby
#1 - Ascendance
#2 - Final Island
#3 - Gorbino
#4 - Parkor

execute as @a[nbt={Dimension:"super_server:lobby"}] run scoreboard players set @s MAIN_Game 0
execute as @a[nbt={Dimension:"ascendance:game"}] run scoreboard players set @s MAIN_Game 1
execute as @a[nbt={Dimension:"final_island:game"}] run scoreboard players set @s MAIN_Game 2
execute as @a[nbt={Dimension:"gorbino:game"}] run scoreboard players set @s MAIN_Game 3
execute as @a[nbt={Dimension:"gorbino:lobby"}] run scoreboard players set @s MAIN_Game 3
execute as @a[nbt={Dimension:"parkor:game"}] run scoreboard players set @s MAIN_Game 4