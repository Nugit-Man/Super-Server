execute if score $Team Mode matches 1 run tag @e[tag=Ravine] add spawn
execute if score $Team Mode matches 1 run execute at @a run tag @e[distance=..25] remove spawn
execute if score $Team Mode matches 1 run execute at @e[tag=spawn,type=armor_stand,limit=1,sort=random] run spawnpoint @r[tag=player] ~ ~9 ~



execute if score $Team Mode matches 2 run execute at @e[tag=Revine_Red,type=armor_stand,limit=1,sort=random] run spawnpoint @r[team=Red] ~ ~ ~
execute if score $Team Mode matches 2 run execute at @e[tag=Ravine_Blue,type=armor_stand,limit=1,sort=random] run spawnpoint @r[team=Blue] ~ ~ ~



execute if score $Team Mode matches 1 run execute at @e[tag=Revine_Red,type=armor_stand,limit=1,sort=random] run advancement grant @a[distance=..3] only ascendance:ascendance/dude_stop
execute if score $Team Mode matches 1 run execute at @e[tag=Ravine_Blue,type=armor_stand,limit=1,sort=random] run advancement grant @a[distance=..3] only ascendance:ascendance/dude_stop