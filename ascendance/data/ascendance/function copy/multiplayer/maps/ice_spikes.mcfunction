execute if score $Team Mode matches 1 run tag @e[tag=Ice_Spikes] add spawn
execute if score $Team Mode matches 1 run execute at @a run tag @e[distance=..30] remove spawn
execute if score $Team Mode matches 1 run execute at @e[tag=spawn,type=armor_stand,limit=1,sort=random] run spawnpoint @r[tag=player] ~ ~-21 ~

effect give @a night_vision infinite 0 true

execute if score $Team Mode matches 2 run execute at @e[tag=Ice_Spikes_Red,type=armor_stand,limit=1,sort=random] run spawnpoint @r[team=Red] ~ ~ ~
execute if score $Team Mode matches 2 run execute at @e[tag=Ice_Spikes_Blue,type=armor_stand,limit=1,sort=random] run spawnpoint @r[team=Blue] ~ ~ ~


execute if score $Team Mode matches 1 run execute at @e[tag=Ice_Spikes_Red,type=armor_stand,limit=1,sort=random] run advancement grant @a[distance=..3] only ascendance:ascendance/bro
execute if score $Team Mode matches 1 run execute at @e[tag=Ice_Spikes_Blue,type=armor_stand,limit=1,sort=random] run advancement grant @a[distance=..3] only ascendance:ascendance/bro