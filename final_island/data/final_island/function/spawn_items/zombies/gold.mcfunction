scoreboard players set FI_Zombie_Gold FI_Item_Cap 0
execute as @e[type=zombie,tag=FI_Zombie_Gold] run scoreboard players add FI_Zombie_Gold FI_Item_Cap 1

execute store result score FI_Zombie_Gold FI_Random run random value 1..53
execute if score FI_Zombie_Gold FI_Item_Cap matches 0..1 in final_island:game if score FI_Zombie_Gold FI_Random matches 1 at @e[type=marker,limit=1,sort=random,tag=FI_Zombie_Gold_Spawner] run summon zombie ~ ~ ~ {Tags:[FI_Zombie_Gold,FI_Zombie_Armor_Gold],drop_chances:{feet:0,legs:0,chest:0,head:0,mainhand:0,offhand:0}}
schedule function final_island:spawn_items/zombies/gold 10t