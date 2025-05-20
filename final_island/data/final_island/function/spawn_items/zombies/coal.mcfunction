scoreboard players set FI_Zombie_Coal FI_Item_Cap 0
execute as @e[type=zombie,tag=FI_Zombie_Coal] run scoreboard players add FI_Zombie_Coal FI_Item_Cap 1

execute store result score FI_Zombie_Coal FI_Random run random value 1..100
execute if score FI_Zombie_Coal FI_Item_Cap matches 0..5 in final_island:game if score FI_Zombie_Coal FI_Random matches 1 at @e[type=marker,limit=1,sort=random,tag=FI_Zombie_Coal_Spawner] run summon zombie ~ ~ ~ {Tags:[FI_Zombie_Coal,FI_Zombie_Armor_Coal],ArmorDropChances:[0f,0f,0f,0f],MainhandDropChance:0f}
schedule function final_island:spawn_items/zombies/coal 2t