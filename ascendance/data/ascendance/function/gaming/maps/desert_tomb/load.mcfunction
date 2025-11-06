scoreboard objectives add AS_Map_DesertTomb dummy "Map: DesertTomb"
scoreboard players set $ AS_Map_DesertTomb 100
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Gamemode=1}] run scoreboard players set $Par AS_Map_DesertTomb 25
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Gamemode=2}] run scoreboard players set $Par AS_Map_DesertTomb 100
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Gamemode=100}] run scoreboard players set $ AS_Map_DesertTomb 101
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Gamemode=100}] run scoreboard players set $Time_10s AS_Map_DesertTomb 0
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Gamemode=100}] run scoreboard players set $Time_sec AS_Map_DesertTomb 0
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Gamemode=100}] run scoreboard players set $Time_min AS_Map_DesertTomb 0

schedule function ascendance:gaming/maps/desert_tomb/secret 10t