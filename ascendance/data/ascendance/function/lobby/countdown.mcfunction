scoreboard players add $Start Mode 1
execute if score $Start Mode matches ..10 run schedule function ascendance:lobby/countdown 1s

execute if score $Start Mode matches 2 run scoreboard players set $Count Mode 2
execute if score $Start Mode matches 2 run bossbar set minecraft:start value 9
execute if score $Start Mode matches 2 run bossbar set minecraft:start name "Game Starting In 9 Seconds"
execute if score $Start Mode matches 3 run bossbar set minecraft:start value 8
execute if score $Start Mode matches 3 run bossbar set minecraft:start name "Game Starting In 8 Seconds"
execute if score $Start Mode matches 4 run bossbar set minecraft:start value 7
execute if score $Start Mode matches 4 run bossbar set minecraft:start name "Game Starting In 7 Seconds"
execute if score $Start Mode matches 5 run bossbar set minecraft:start value 6
execute if score $Start Mode matches 5 run bossbar set minecraft:start name "Game Starting In 6 Seconds"
execute if score $Start Mode matches 6 run bossbar set minecraft:start value 5
execute if score $Start Mode matches 6 run bossbar set minecraft:start name "Game Starting In 5 Seconds"
execute if score $Start Mode matches 7 run bossbar set minecraft:start value 4
execute if score $Start Mode matches 7 run bossbar set minecraft:start name "Game Starting In 4 Seconds"
execute if score $Start Mode matches 8 run bossbar set minecraft:start value 3
execute if score $Start Mode matches 8 run bossbar set minecraft:start name "Game Starting In 3 Seconds"
execute if score $Start Mode matches 9 run bossbar set minecraft:start value 2
execute if score $Start Mode matches 9 run bossbar set minecraft:start name "Game Starting In 2 Seconds"
execute if score $Start Mode matches 10 run bossbar set minecraft:start value 1
execute if score $Start Mode matches 10 run bossbar set minecraft:start name "Game Starting In 1 Seconds"
execute if score $Start Mode matches 11 run bossbar set minecraft:start players

#check for players (Make sure to make it dependent on weather or not it is ffa or teams or singleplayer when they get added)
execute if score $Start Mode matches 11 run execute store result score $Count Mode run team list Red
execute if score $Start Mode matches 11 run execute store result score $Count Snowball run team list Blue
execute if score $Start Mode matches 11 run scoreboard players operation $Count Mode += $Count Snowball
execute if score $Start Mode matches 11 run execute if score $Count Mode matches 0..1 run scoreboard players set $Start Mode 0
execute if score $Start Mode matches 11 run execute if score $Count Mode matches 0..1 run team empty Red
execute if score $Start Mode matches 11 run execute if score $Count Mode matches 0..1 run team empty Blue
execute if score $Start Mode matches 11 run scoreboard players set $Game Mode 2
execute if score $Start Mode matches 11 run tag @a[team=Red] remove times
execute if score $Start Mode matches 11 run clear @a[tag=!busy]
execute if score $Start Mode matches 11 run function ascendance:multiplayer/load