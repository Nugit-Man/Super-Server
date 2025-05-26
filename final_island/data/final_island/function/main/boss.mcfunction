#Zombie King
execute at @e[type=armor_stand,tag=Zombie_Boss_Check] run execute as @a[distance=..10] run scoreboard players add FI_Boss_Zombie_Player FI_Boss_Check 1
execute at @e[type=armor_stand,tag=Zombie_Boss_Check] run execute as @e[type=zombie,distance=..10] run scoreboard players add FI_Boss_Zombie_Zombie FI_Boss_Check 1

execute if score FI_Boss_Zombie_Zombie FI_Boss_Check matches 1.. run clone 68968 81 28 68976 86 28 68981 91 18
execute if score FI_Boss_Zombie_Zombie FI_Boss_Check matches 0 run fill 68981 91 18 68989 96 18 air

execute if score FI_Boss_Zombie_Player FI_Boss_Check matches 0 run execute at @e[type=armor_stand,tag=Zombie_Boss_Check] run kill @e[type=zombie,distance=..10]
execute if score FI_Boss_Zombie_Player FI_Boss_Check matches 0 run execute at @e[type=armor_stand,tag=Zombie_Boss_Check] run kill @e[type=item,distance=..10]