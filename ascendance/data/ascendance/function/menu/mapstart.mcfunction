execute as @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=1}] run function ascendance:gaming/maps/desert_tomb/load


execute as @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=2}] run scoreboard objectives add AS_Map_Tabletop dummy "Map: Tabletop"
execute as @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=2}] run scoreboard players set $ AS_Map_Tabletop 100
execute as @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=2}] run scoreboard players display name $ AS_Map_Tabletop "First to"
execute as @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=2}] run scoreboard players display numberformat $ AS_Map_Tabletop fixed {text:"25 kills"}

execute as @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=3}] run scoreboard objectives add AS_Map_Brutalism dummy "Map: Brutalism"
execute as @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=3}] run scoreboard players set $ AS_Map_Brutalism 100
execute as @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=3}] run scoreboard players display name $ AS_Map_Brutalism "First to"
execute as @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=3}] run scoreboard players display numberformat $ AS_Map_Brutalism fixed {text:"25 kills"}

execute as @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=12}] run scoreboard objectives add AS_Map_JunglePikes dummy "Map: Jungle Pikes"
execute as @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=12}] run scoreboard players set $ AS_Map_JunglePikes 100
execute as @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=12}] run scoreboard players display name $ AS_Map_JunglePikes "First to"
execute as @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=12}] run scoreboard players display numberformat $ AS_Map_JunglePikes fixed {text:"25 kills"}

