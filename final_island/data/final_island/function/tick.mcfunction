function final_island:main/abilities
function final_island:main/armor_sets
function final_island:main/mana

scoreboard players set FI_Zombie_Armor_Checker FI_Misc 0
execute at @e[type=armor_stand,tag=FI_Zombie_Armor_Checker] run execute as @a[distance=..300] run scoreboard players add FI_Zombie_Armor_Checker FI_Misc 1
execute if score FI_Zombie_Armor_Checker FI_Misc matches 1.. run function final_island:main/zombie_armor