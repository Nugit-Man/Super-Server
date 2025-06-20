execute if score $Team Mode matches 1 run execute at @a run summon armor_stand ~ ~-20 ~ {Tags:["buffer"]}
execute if score $Team Mode matches 1 run tag @e[tag=Brutalism] add spawn
execute if score $Team Mode matches 1 run execute at @e[tag=buffer] run tag @e[distance=..15] remove spawn
execute if score $Team Mode matches 1 run kill @e[tag=buffer]
execute if score $Team Mode matches 1 run execute at @e[tag=spawn,type=armor_stand,limit=1,sort=random] run spawnpoint @r[tag=player] ~ ~19 ~
execute at @e[tag=brutalism_spawn] run advancement grant @a[distance=..5] only ascendance:ascendance/where_are_you_going

execute if score $Team Mode matches 2 run execute at @e[tag=Brutalism_Red,type=armor_stand,limit=1,sort=random] run spawnpoint @r[team=Red] ~ ~4 ~
execute if score $Team Mode matches 2 run execute at @e[tag=Brutalism_Blue,type=armor_stand,limit=1,sort=random] run spawnpoint @r[team=Blue] ~ ~4 ~