function final_island:main/abilities
function final_island:main/armor_sets
function final_island:main/mana
function final_island:main/advnacements
function final_island:main/barrel
function final_island:main/talks

scoreboard players set FI_Zombie_Armor_Checker FI_Misc 0
execute at @e[type=armor_stand,tag=FI_Zombie_Armor_Checker] run execute as @a[distance=..300] run scoreboard players add FI_Zombie_Armor_Checker FI_Misc 1
execute if score FI_Zombie_Armor_Checker FI_Misc matches 1.. run function final_island:main/zombie_armor


execute at @a[scores={MAIN_Game=2}] run effect give @e[type=villager,distance=..100] resistance infinite 255 true
execute at @a[scores={MAIN_Game=2}] run effect give @e[type=villager,distance=..100] regeneration infinite 255 true

#gamerule doLimitedCrafting true final_island:game

execute store result score FI_Emerald FI_Misc run random value 1..1000
execute if score FI_Emerald FI_Misc matches 1 run function final_island:spawn_items/caves/emerald

#Run the Skeleton Boss
execute as @a[tag=FI_Boss_2,scores={MAIN_Game=2,FI_Check_Deaths=1..}] run function final_island:boss/skeleton/lose
execute as @a[tag=FI_Boss_2,scores={MAIN_Game=2}] run function final_island:boss/skeleton/tick
tag @a[scores={MAIN_Game=0}] remove FI_Boss_2
bossbar set fi_skeleton_boss players @a[tag=FI_Boss_2,scores={MAIN_Game=2}]
bossbar set fi_spider_boss players @a[tag=FI_Boss_2,scores={MAIN_Game=2}]
bossbar set fi_time players @a[tag=FI_Boss_2,scores={MAIN_Game=2}]

scoreboard players set @a[scores={MAIN_Game=2,FI_Check_Deaths=1..}] FI_Boss_Music 0
scoreboard players set @a[scores={MAIN_Game=2,FI_Check_Deaths=1..}] FI_Check_Deaths 0
xp add @a[scores={MAIN_Game=2,FI_Check_Deaths=1..}] -1 levels
tellraw @a[scores={MAIN_Game=2,FI_Check_Deaths=1..}] {text:"You died and lose 1 level",color:red}


execute as @a[scores={MAIN_Game=2,FI_Villager_Talk_Timer=60}] run function final_island:talk
scoreboard players add @a[scores={MAIN_Game=2,FI_Villager_Talk_Timer=58}] FI_Villager_Talk 1
scoreboard players add @a[scores={MAIN_Game=2,FI_Villager_Talk_Timer=1..}] FI_Villager_Talk_Timer 1

#prevent furnaces from being used
data modify block -50 -14 -88 lit_time_remaining set value 0s
data modify block -50 -13 -88 lit_time_remaining set value 0s
data modify block -48 -11 -75 lit_time_remaining set value 0s
data modify block -129 4 -56 lit_time_remaining set value 0s

<<<<<<< HEAD


recipe take @a[scores={MAIN_Game=2}] *
=======
#FISH
execute store result score @a[scores={MAIN_Game=2,FI_Fish_Check=1..}] FI_Misc run random value 1..100
execute as @a[scores={MAIN_Game=2,FI_Fish_Check=1..,FI_Misc=1..2}] if items entity @s weapon.mainhand *[custom_data~{FI_Double_Catch_1:1b}] run loot give @s fish final_island:gameplay/fishing/fi_default ~ ~ ~
execute as @a[scores={MAIN_Game=2,FI_Fish_Check=1..,FI_Misc=1..4}] if items entity @s weapon.mainhand *[custom_data~{FI_Double_Catch_2:1b}] run loot give @s fish final_island:gameplay/fishing/fi_default ~ ~ ~
execute as @a[scores={MAIN_Game=2,FI_Fish_Check=1..,FI_Misc=1..6}] if items entity @s weapon.mainhand *[custom_data~{FI_Double_Catch_3:1b}] run loot give @s fish final_island:gameplay/fishing/fi_default ~ ~ ~
execute as @a[scores={MAIN_Game=2,FI_Fish_Check=1..,FI_Misc=1..8}] if items entity @s weapon.mainhand *[custom_data~{FI_Double_Catch_4:1b}] run loot give @s fish final_island:gameplay/fishing/fi_default ~ ~ ~
execute as @a[scores={MAIN_Game=2,FI_Fish_Check=1..,FI_Misc=1..10}] if items entity @s weapon.mainhand *[custom_data~{FI_Double_Catch_5:1b}] run loot give @s fish final_island:gameplay/fishing/fi_default ~ ~ ~
execute as @a[scores={MAIN_Game=2,FI_Fish_Check=1..,FI_Misc=1..12}] if items entity @s weapon.mainhand *[custom_data~{FI_Double_Catch_6:1b}] run loot give @s fish final_island:gameplay/fishing/fi_default ~ ~ ~
execute as @a[scores={MAIN_Game=2,FI_Fish_Check=1..,FI_Misc=1..14}] if items entity @s weapon.mainhand *[custom_data~{FI_Double_Catch_7:1b}] run loot give @s fish final_island:gameplay/fishing/fi_default ~ ~ ~
execute as @a[scores={MAIN_Game=2,FI_Fish_Check=1..,FI_Misc=1..16}] if items entity @s weapon.mainhand *[custom_data~{FI_Double_Catch_8:1b}] run loot give @s fish final_island:gameplay/fishing/fi_default ~ ~ ~
execute as @a[scores={MAIN_Game=2,FI_Fish_Check=1..,FI_Misc=1..18}] if items entity @s weapon.mainhand *[custom_data~{FI_Double_Catch_9:1b}] run loot give @s fish final_island:gameplay/fishing/fi_default ~ ~ ~
execute as @a[scores={MAIN_Game=2,FI_Fish_Check=1..,FI_Misc=1..20}] if items entity @s weapon.mainhand *[custom_data~{FI_Double_Catch_10:1b}] run loot give @s fish final_island:gameplay/fishing/fi_default ~ ~ ~
>>>>>>> 08a4098ca8b5731a6ed702f43e0dabfbc2fa6880
