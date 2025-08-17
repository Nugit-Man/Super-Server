execute if score $Team Mode matches 1 run tag @e[tag=Tabletop] add spawn
execute if score $Team Mode matches 1 run execute at @a run tag @e[distance=..15] remove spawn
execute if score $Team Mode matches 1 run execute at @e[tag=spawn,type=armor_stand,limit=1,sort=random] run spawnpoint @r[tag=player] ~ ~9 ~

#Give the advancemnt
execute as @a run execute store result score @s Num run random value 1..72000
advancement grant @a[scores={Num=12345},tag=player] only ascendance:ascendance/gamblers_philosophy

execute if score $Team Mode matches 2 run execute at @e[tag=Tabletop_Red,type=armor_stand,limit=1,sort=random] run spawnpoint @r[team=Red] ~ ~4 ~
execute if score $Team Mode matches 2 run execute at @e[tag=Tabletop_Blue,type=armor_stand,limit=1,sort=random] run spawnpoint @r[team=Blue] ~ ~4 ~