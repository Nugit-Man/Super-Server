clear @a[tag=player]
tag @e remove spawn
scoreboard players set @a Num 0
scoreboard players set @a[tag=player] Rock_Deaths 0

title @a[tag=winner] title [{"text":"Victory!!","color":"green"}]
title @a[tag=!winner] subtitle [{"selector":"@r[tag=winner]"},{"text":" won the game","color":"red"}]
title @a[tag=!winner] title [{"text":"Defeat","color":"red"}]

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


execute if score $Gamemode Mode matches 3 run function ascendance:multiplayer/ffa/remove_hill
execute if score $Gamemode Mode matches 3 run schedule clear ascendance:multiplayer/ffa/hill
execute if score $Gamemode Mode matches 3 run advancement grant @a[scores={Deaths=0},tag=player] only ascendance:ascendance/did_i_win

scoreboard players set $Game Mode 1
scoreboard players set $Menu Mode 0
scoreboard players set $Map Mode 0
scoreboard players set $Start Mode 0

scoreboard objectives remove Deathmessages
scoreboard objectives remove Killmessages
scoreboard objectives remove Killstreak
scoreboard objectives remove Lives

schedule function ascendance:multiplayer/end 3s