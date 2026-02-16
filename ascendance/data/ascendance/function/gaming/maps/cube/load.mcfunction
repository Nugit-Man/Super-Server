scoreboard objectives add AS_Map_Cube dummy "Map: Cube"
scoreboard players set $ AS_Map_Cube 100
execute as @a[scores={MAIN_Game=1,AS_Map=10,AS_Gamemode=1}] run scoreboard players set $Par AS_Map_Cube 25
execute as @a[scores={MAIN_Game=1,AS_Map=10,AS_Gamemode=2}] run scoreboard players set $Par AS_Map_Cube 100
execute as @a[scores={MAIN_Game=1,AS_Map=10,AS_Gamemode=100}] run scoreboard players set $ AS_Map_Cube 101
execute as @a[scores={MAIN_Game=1,AS_Map=10,AS_Gamemode=100}] run scoreboard players set $Time_10s AS_Map_Cube 0
execute as @a[scores={MAIN_Game=1,AS_Map=10,AS_Gamemode=100}] run scoreboard players set $Time_sec AS_Map_Cube 0
execute as @a[scores={MAIN_Game=1,AS_Map=10,AS_Gamemode=100}] run scoreboard players set $Time_min AS_Map_Cube 0

execute as @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Gamemode=3,AS_Map=10}] run scoreboard players set $Time AS_Map_Cube 65
