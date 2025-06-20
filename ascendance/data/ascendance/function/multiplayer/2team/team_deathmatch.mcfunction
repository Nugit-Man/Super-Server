scoreboard players set Red Teamkills 0
scoreboard players set Blue Teamkills 0
execute as @a[team=Red] run scoreboard players operation Red Teamkills += @s Kills
execute as @a[team=Blue] run scoreboard players operation Blue Teamkills += @s Kills

execute if score $Config Mode matches 0 run execute if score Red Teamkills matches 5 run tag @a[team=Red] add winner
execute if score $Config Mode matches 1 run execute if score Red Teamkills matches 10 run tag @a[team=Red] add winner
execute if score $Config Mode matches 2 run execute if score Red Teamkills matches 25 run tag @a[team=Red] add winner
execute if score $Config Mode matches 3 run execute if score Red Teamkills matches 40 run tag @a[team=Red] add winner

execute if score $Config Mode matches 0 run execute if score Blue Teamkills matches 5 run tag @a[team=Blue] add winner
execute if score $Config Mode matches 1 run execute if score Blue Teamkills matches 10 run tag @a[team=Blue] add winner
execute if score $Config Mode matches 2 run execute if score Blue Teamkills matches 25 run tag @a[team=Blue] add winner
execute if score $Config Mode matches 3 run execute if score Blue Teamkills matches 40 run tag @a[team=Blue] add winner

execute as @a[tag=winner] run function ascendance:multiplayer/2team/end