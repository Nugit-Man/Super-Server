execute if score $Team Mode matches 1 run tag @e[tag=Final_Island] add spawn
execute if score $Team Mode matches 1 run execute at @a run tag @e[distance=..115] remove spawn
execute if score $Team Mode matches 1 run execute at @e[tag=spawn,type=armor_stand,limit=1,sort=random] run spawnpoint @r[tag=player] ~ ~-101 ~

execute if score $Team Mode matches 2 run execute at @e[tag=Final_Island_Red,type=armor_stand,limit=1,sort=random] run spawnpoint @r[team=Red] ~ ~ ~
execute if score $Team Mode matches 2 run execute at @e[tag=Final_Island_Blue,type=armor_stand,limit=1,sort=random] run spawnpoint @r[team=Blue] ~ ~ ~