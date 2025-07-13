function final_island:main/abilities
function final_island:main/armor_sets
function final_island:main/mana
function final_island:main/advnacements

scoreboard players set FI_Zombie_Armor_Checker FI_Misc 0
execute at @e[type=armor_stand,tag=FI_Zombie_Armor_Checker] run execute as @a[distance=..300] run scoreboard players add FI_Zombie_Armor_Checker FI_Misc 1
execute if score FI_Zombie_Armor_Checker FI_Misc matches 1.. run function final_island:main/zombie_armor


xp add @a[scores={MAIN_Game=2,FI_Check_Deaths=1..}] -1 levels
tellraw @a[scores={MAIN_Game=2,FI_Check_Deaths=1..}] {text:"You died and lose 1 level",color:red}
scoreboard players set @a[scores={MAIN_Game=2}] FI_Check_Deaths 0

execute at @a[scores={MAIN_Game=2}] run effect give @e[type=villager,distance=..100] resistance infinite 255 true
execute at @a[scores={MAIN_Game=2}] run effect give @e[type=villager,distance=..100] regeneration infinite 255 true

gamerule doLimitedCrafting true final_island:game
