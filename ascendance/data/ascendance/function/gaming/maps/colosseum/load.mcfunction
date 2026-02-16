scoreboard objectives add AS_Map_Colosseum dummy "Map: Colosseum"
scoreboard players set $ AS_Map_Colosseum 100
execute as @a[scores={MAIN_Game=1,AS_Map=4,AS_Gamemode=1}] run scoreboard players set $Par AS_Map_Colosseum 25
execute as @a[scores={MAIN_Game=1,AS_Map=4,AS_Gamemode=2}] run scoreboard players set $Par AS_Map_Colosseum 100
execute as @a[scores={MAIN_Game=1,AS_Map=4,AS_Gamemode=100}] run scoreboard players set $ AS_Map_Colosseum 101
execute as @a[scores={MAIN_Game=1,AS_Map=4,AS_Gamemode=100}] run scoreboard players set $Time_10s AS_Map_Colosseum 0
execute as @a[scores={MAIN_Game=1,AS_Map=4,AS_Gamemode=100}] run scoreboard players set $Time_sec AS_Map_Colosseum 0
execute as @a[scores={MAIN_Game=1,AS_Map=4,AS_Gamemode=100}] run scoreboard players set $Time_min AS_Map_Colosseum 0

schedule function ascendance:gaming/maps/colosseum/hide 1s

execute as @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Gamemode=3,AS_Map=4}] run scoreboard players set $Time AS_Map_Colosseum 65
