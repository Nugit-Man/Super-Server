scoreboard objectives add AS_Map_DesertTomb dummy "Map: DesertTomb"
scoreboard players set $ AS_Map_DesertTomb 100
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Gamemode=1}] run scoreboard players set $Par AS_Map_DesertTomb 25
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Gamemode=2}] run scoreboard players set $Par AS_Map_DesertTomb 100
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Gamemode=100}] run scoreboard players set $ AS_Map_DesertTomb 101
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Gamemode=100}] run scoreboard players set $Time_10s AS_Map_DesertTomb 0
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Gamemode=100}] run scoreboard players set $Time_sec AS_Map_DesertTomb 0
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Gamemode=100}] run scoreboard players set $Time_min AS_Map_DesertTomb 0

#Fill in the secret
setblock 1014 1 42 minecraft:cut_red_sandstone
setblock 1014 0 42 minecraft:red_sandstone
setblock 1026 1 42 minecraft:cut_red_sandstone
setblock 1026 0 42 minecraft:red_sandstone