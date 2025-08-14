execute if score $Team Mode matches 1 run tag @e[tag=Jungle_Pikes] add spawn
execute if score $Team Mode matches 1 run execute at @a run tag @e[distance=..20] remove spawn
execute if score $Team Mode matches 1 run execute at @e[tag=spawn,type=armor_stand,limit=1,sort=random] run spawnpoint @r[tag=player] ~ ~9 ~

effect give @a night_vision infinite 0 true

execute if score $Team Mode matches 2 run execute at @e[tag=Jungle_Pikes_Red,type=armor_stand,limit=1,sort=random] run spawnpoint @r[team=Red] ~ ~4 ~
execute if score $Team Mode matches 2 run execute at @e[tag=Jungle_Pikes_Blue,type=armor_stand,limit=1,sort=random] run spawnpoint @r[team=Blue] ~ ~4 ~