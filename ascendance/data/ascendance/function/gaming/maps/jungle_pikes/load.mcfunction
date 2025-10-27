scoreboard objectives add AS_Map_JunglePikes dummy "Map: JunglePikes"
scoreboard players set $ AS_Map_JunglePikes 100
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Gamemode=1}] run scoreboard players set $Par AS_Map_JunglePikes 25
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Gamemode=2}] run scoreboard players set $Par AS_Map_JunglePikes 100
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Gamemode=100}] run scoreboard players set $ AS_Map_JunglePikes 101
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Gamemode=100}] run scoreboard players set $Time_10s AS_Map_JunglePikes 0
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Gamemode=100}] run scoreboard players set $Time_sec AS_Map_JunglePikes 0
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Gamemode=100}] run scoreboard players set $Time_min AS_Map_JunglePikes 0
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Gamemode=100}] run schedule function ascendance:gaming/maps/jungle_pikes/spawn_first 13t