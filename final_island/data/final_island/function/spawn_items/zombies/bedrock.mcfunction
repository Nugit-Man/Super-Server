scoreboard players set FI_Zombie_Bedrock FI_Item_Cap 0
execute as @e[type=zombie,tag=FI_Zombie_Bedrock] run scoreboard players add FI_Zombie_Bedrock FI_Item_Cap 1

execute store result score FI_Zombie_Bedrock FI_Random run random value 1..15
execute if score FI_Zombie_Bedrock FI_Item_Cap matches 0..17 in final_island:game if score FI_Zombie_Bedrock FI_Random matches 1 at @e[type=marker,limit=1,sort=random,tag=FI_Zombie_Bedrock_Spawner] run summon zombie ~ ~ ~ {Tags:[FI_Zombie_Bedrock,FI_Zombie_Armor_Bedrock],ArmorDropChances:[0f,0f,0f,0f],MainhandDropChance:0f}
schedule function final_island:spawn_items/zombies/bedrock 10t