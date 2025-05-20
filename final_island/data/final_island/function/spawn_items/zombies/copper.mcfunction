scoreboard players set FI_Zombie_Copper FI_Item_Cap 0
execute as @e[type=zombie,tag=FI_Zombie_Copper] run scoreboard players add FI_Zombie_Copper FI_Item_Cap 1

execute store result score FI_Zombie_Copper FI_Random run random value 1..36
execute if score FI_Zombie_Copper FI_Item_Cap matches 0..15 in final_island:game if score FI_Zombie_Copper FI_Random matches 1 at @e[type=marker,limit=1,sort=random,tag=FI_Zombie_Copper_Spawner] run summon zombie ~ ~ ~ {Tags:[FI_Zombie_Copper,FI_Zombie_Armor_Copper],ArmorDropChances:[0f,0f,0f,0f],MainhandDropChance:0f}
schedule function final_island:spawn_items/zombies/copper 12t