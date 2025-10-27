#score points
execute as @a[scores={MAIN_Game=1,AS_Map=13,AS_Mode=1,AS_Gamemode=1}] run scoreboard players operation @s AS_Map_Bridge += @s AS_Kills
execute if score MAIN_1s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=1,AS_Map=13,AS_Mode=1,AS_Gamemode=2},tag=AS_Crown] run scoreboard players add @s AS_Map_Bridge 1

#Spawn points
execute at @e[type=marker,limit=1,sort=random,tag=AS_Spawn_Bridge] run spawnpoint @r[scores={MAIN_Game=1,AS_Map=13,AS_Mode=1}]


#Kill if go on glass
execute as @a[scores={AS_Map=13,MAIN_Game=1}] run execute at @s run execute if block ~ ~-1 ~ minecraft:gray_stained_glass run kill @s


#Check if singleplayer or multiiplayer
execute if score $ AS_Map_Bridge matches 100 run function ascendance:gaming/maps/bridge/multiplayer
execute if score $ AS_Map_Bridge matches 101 run function ascendance:gaming/maps/bridge/singleplayer
