#change the score of MAIN_Game depending on what world they are in
#0 - lobby
#1 - Ascendance
#2 - Final Island
#3 - Gorbino
#4 - Parkor
#5 - Skyblock
#6 - Mace master
#7 - RIC
#8 - Kanye
#9 - Mob Madness

execute as @a[nbt={Dimension:"super_server:lobby"}] run scoreboard players set @s MAIN_Game 0
execute as @a[nbt={Dimension:"ascendance:game"}] run scoreboard players set @s MAIN_Game 1
execute as @a[nbt={Dimension:"final_island:game"}] run scoreboard players set @s MAIN_Game 2
execute as @a[nbt={Dimension:"gorbino:game"}] run scoreboard players set @s MAIN_Game 3
execute as @a[nbt={Dimension:"gorbino:lobby"}] run scoreboard players set @s MAIN_Game 3
execute as @a[nbt={Dimension:"parkor:game"}] run scoreboard players set @s MAIN_Game 4
execute as @a[nbt={Dimension:"minecraft:overworld"}] run scoreboard players set @s MAIN_Game 5
execute as @a[nbt={Dimension:"minecraft:the_nether"}] run scoreboard players set @s MAIN_Game 5
execute as @a[nbt={Dimension:"super_server:mace_master"}] run scoreboard players set @s MAIN_Game 6
execute as @a[nbt={Dimension:"ric:game"}] run scoreboard players set @s MAIN_Game 7
execute as @a[nbt={Dimension:"ric:lobby"}] run scoreboard players set @s MAIN_Game 7
execute as @a[nbt={Dimension:"super_server:kanye"}] run scoreboard players set @s MAIN_Game 8
execute as @a[nbt={Dimension:"mob_madness:game"}] run scoreboard players set @s MAIN_Game 9
