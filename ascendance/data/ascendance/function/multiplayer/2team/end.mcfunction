clear @a[tag=player]
tag @e remove spawn
scoreboard players set @a Num 0
scoreboard players set @a Rock_Deaths 0
team empty Red
team empty Blue


title @a[tag=winner] title ["",{"text":"Victory!!","color":"green"}]
execute as @r[tag=winner,team=Red] run title @a[tag=!winner] subtitle [{"text":"Red team won the game","color":"red"}]
execute as @r[tag=winner,team=Blue] run title @a[tag=!winner] subtitle [{"text":"Blue team won the game","color":"red"}]
title @a[tag=!winner] title ["",{"text":"Defeat","color":"red"}]

#Hide Desert tomb
setblock 1014 1 42 minecraft:cut_red_sandstone
setblock 1014 0 42 minecraft:red_sandstone
setblock 1026 1 42 minecraft:cut_red_sandstone
setblock 1026 0 42 minecraft:red_sandstone

#Hide the club
setblock 5022 6 17 minecraft:smooth_stone
fill 5005 10 7 5005 7 6 minecraft:gray_wool
fill 5005 10 28 5005 7 27 minecraft:gray_wool
fill 5001 7 19 5001 10 15 minecraft:gray_concrete

#Hide colosium
fill 4109 -2 98 4107 -2 100 minecraft:suspicious_sand

#Hide Ice Spikes
fill 11018 3 88 11020 3 86 minecraft:frosted_ice

scoreboard players set $Game Mode 1
scoreboard players set $Menu Mode 0
scoreboard players set $Map Mode 0
scoreboard players set $Start Mode 0

scoreboard objectives remove Deathmessages
scoreboard objectives remove Killmessages
scoreboard objectives remove Killstreak
scoreboard objectives remove Teamkills

#clean up the mess that's ctf
execute at @e[tag=Red_Flag_Tracker] run fill ~ ~ ~ ~ ~-50 ~ air replace red_banner
execute at @e[tag=Blue_Flag_Tracker] run fill ~ ~ ~ ~ ~-50 ~ air replace blue_banner
execute at @e[tag=Red_Flag_Marker] run fill ~ ~ ~ ~ ~ ~ air replace red_banner
execute at @e[tag=Blue_Flag_Marker] run fill ~ ~ ~ ~ ~ ~ air replace blue_banner
scoreboard objectives remove Blue_Flags
scoreboard objectives remove Red_Flags
scoreboard objectives remove Captures
scoreboard objectives remove Flagstate
kill @e[tag=Red_Flag_Tracker]
kill @e[tag=Blue_Flag_Tracker]
kill @e[tag=Red_Flag_Marker]
kill @e[tag=Blue_Flag_Marker]
tag @a remove Red_Flag_Taken
tag @a remove Blue_Flag_Taken
scoreboard objectives remove Caps


schedule function ascendance:multiplayer/end 3s