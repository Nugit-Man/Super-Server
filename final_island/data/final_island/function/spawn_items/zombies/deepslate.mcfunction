scoreboard players set FI_Zombie_Deepslate FI_Item_Cap 0
execute as @e[type=zombie,tag=FI_Zombie_Deepslate] run scoreboard players add FI_Zombie_Deepslate FI_Item_Cap 1

execute store result score FI_Zombie_Deepslate FI_Random run random value 1..38
execute if score FI_Zombie_Deepslate FI_Item_Cap matches 0..12 in final_island:game if score FI_Zombie_Deepslate FI_Random matches 1 at @e[type=marker,limit=1,sort=random,tag=FI_Zombie_Deepslate_Spawner] run summon zombie ~ ~ ~ {Tags:[FI_Zombie_Deepslate,FI_Zombie_Armor_Deepslate],drop_chances:{feet:0,legs:0,chest:0,head:0,mainhand:0,offhand:0}}
schedule function final_island:spawn_items/zombies/deepslate 7t