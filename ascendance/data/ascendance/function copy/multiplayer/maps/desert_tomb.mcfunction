execute if score $Team Mode matches 1 run tag @e[tag=Desert_Tomb] add spawn
execute if score $Team Mode matches 1 run execute at @a run tag @e[distance=..15] remove spawn
execute if score $Team Mode matches 1 run execute at @e[tag=spawn,type=armor_stand,limit=1,sort=random] run spawnpoint @r[tag=player] ~ ~9 ~


#Change the $Map when team modes are on
execute if score $Team Mode matches 1 run execute at @e[tag=Desert_Tomb_Red] if score $Map Mode matches 1 run advancement grant @a[distance=..5] only ascendance:ascendance/you_cant_be_here
execute if score $Team Mode matches 1 run execute at @e[tag=Desert_Tomb_Blue] if score $Map Mode matches 1 run advancement grant @a[distance=..5] only ascendance:ascendance/you_cant_be_here

execute if score $Team Mode matches 2 run execute at @e[tag=Desert_Tomb_Red,type=armor_stand,limit=1,sort=random] run spawnpoint @r[team=Red] ~ ~3 ~
execute if score $Team Mode matches 2 run execute at @e[tag=Desert_Tomb_Blue,type=armor_stand,limit=1,sort=random] run spawnpoint @r[team=Blue] ~ ~3 ~