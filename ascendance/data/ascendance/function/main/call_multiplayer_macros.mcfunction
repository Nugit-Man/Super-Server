function ascendance:main/macro/multiplayer with storage ascendance:multiplayer
execute store result storage ascendance:multiplayer map_parse int 1 run scoreboard players add $Parse AS_Map 1
execute if score $Parse AS_Map matches 14 run scoreboard players set $Parse AS_Map 0

#Get name of map
execute if score $Parse AS_Map matches 1 run data modify storage ascendance:multiplayer map_name set value "AS_Map_DesertTomb"
execute if score $Parse AS_Map matches 2 run data modify storage ascendance:multiplayer map_name set value "AS_Map_Tabletop"
execute if score $Parse AS_Map matches 3 run data modify storage ascendance:multiplayer map_name set value "AS_Map_Brutalism"
execute if score $Parse AS_Map matches 4 run data modify storage ascendance:multiplayer map_name set value "AS_Map_Colosseum"
execute if score $Parse AS_Map matches 5 run data modify storage ascendance:multiplayer map_name set value "AS_Map_Club"
execute if score $Parse AS_Map matches 10 run data modify storage ascendance:multiplayer map_name set value "AS_Map_Cube"
execute if score $Parse AS_Map matches 11 run data modify storage ascendance:multiplayer map_name set value "AS_Map_IceSpikes"
execute if score $Parse AS_Map matches 12 run data modify storage ascendance:multiplayer map_name set value "AS_Map_JunglePikes"
execute if score $Parse AS_Map matches 13 run data modify storage ascendance:multiplayer map_name set value "AS_Map_Bridge"


execute unless score $Parse AS_Map matches 0 run function ascendance:main/call_multiplayer_macros