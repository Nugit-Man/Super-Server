#Zombie King
execute at @e[type=armor_stand,tag=Zombie_Boss_Check] run execute as @a[distance=..10] run scoreboard players add FI_Boss_Zombie_Player FI_Boss_Check 1
execute at @e[type=armor_stand,tag=Zombie_Boss_Check] run execute as @e[type=zombie,distance=..10] run scoreboard players add FI_Boss_Zombie_Zombie FI_Boss_Check 1

execute if score FI_Boss_Zombie_Zombie FI_Boss_Check matches 1.. run clone x y z x y z x y z
execute if score FI_Boss_Zombie_Zombie FI_Boss_Check matches 0 run fill x y z x y z

execute if score FI_Boss_Zombie_Player FI_Boss_Check matches 0 run execute at @e[type=armor_stand,tag=Zombie_Boss_Check] run kill @e[type=zombie,distance=..10]
execute if score FI_Boss_Zombie_Player FI_Boss_Check matches 0 run execute at @e[type=armor_stand,tag=Zombie_Boss_Check] run kill @e[type=item,distance=..10]