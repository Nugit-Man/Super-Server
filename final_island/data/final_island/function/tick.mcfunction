function final_island:main/abilities
function final_island:main/armor_sets
function final_island:main/mana
function final_island:main/advnacements
function final_island:main/barrel

scoreboard players set FI_Zombie_Armor_Checker FI_Misc 0
execute at @e[type=armor_stand,tag=FI_Zombie_Armor_Checker] run execute as @a[distance=..300] run scoreboard players add FI_Zombie_Armor_Checker FI_Misc 1
execute if score FI_Zombie_Armor_Checker FI_Misc matches 1.. run function final_island:main/zombie_armor


execute at @a[scores={MAIN_Game=2}] run effect give @e[type=villager,distance=..100] resistance infinite 255 true
execute at @a[scores={MAIN_Game=2}] run effect give @e[type=villager,distance=..100] regeneration infinite 255 true

#gamerule doLimitedCrafting true final_island:game

execute store result score FI_Emerald FI_Misc run random value 1..1000
execute if score FI_Emerald FI_Misc matches 1 run function final_island:spawn_items/caves/emerald

#Run the Skeleton Boss
execute as @a[tag=FI_Boss_2,scores={MAIN_Game=2}] run function final_island:boss/skeleton/lose
execute as @a[tag=FI_Boss_2,scores={MAIN_Game=2}] run function final_island:boss/skeleton/tick
tag @a[scores={MAIN_Game=0}] remove FI_Boss_2
bossbar set fi_skeleton_boss players @a[tag=FI_Boss_2,scores={MAIN_Game=2}]
bossbar set fi_spider_boss players @a[tag=FI_Boss_2,scores={MAIN_Game=2}]
bossbar set fi_time players @a[tag=FI_Boss_2,scores={MAIN_Game=2}]


xp add @a[scores={MAIN_Game=2,FI_Check_Deaths=1..}] -1 levels
tellraw @a[scores={MAIN_Game=2,FI_Check_Deaths=1..}] {text:"You died and lose 1 level",color:red}
scoreboard players set @a[scores={MAIN_Game=2}] FI_Boss_Music 0
scoreboard players set @a[scores={MAIN_Game=2}] FI_Check_Deaths 0
