execute if score $Team Mode matches 1 run tag @e[tag=Colosium] add spawn
execute if score $Team Mode matches 1 run execute at @a run tag @e[distance=..15] remove spawn
execute if score $Team Mode matches 1 run execute at @e[tag=spawn,type=armor_stand,limit=1,sort=random] run spawnpoint @r[tag=player] ~ ~9 ~

execute if score $Team Mode matches 1 run execute at @e[type=armor_stand,tag=champion] run tag @a[distance=10..] remove Champion

execute if score $Team Mode matches 2 run execute at @e[tag=Colosium_Red,type=armor_stand,limit=1,sort=random] run spawnpoint @r[team=Red] ~ ~4 ~
execute if score $Team Mode matches 2 run execute at @e[tag=Colosium_Blue,type=armor_stand,limit=1,sort=random] run spawnpoint @r[team=Blue] ~ ~4 ~