scoreboard players set FI_cow FI_Item_Cap 0
execute as @e[type=cow,tag=FI_cow] run scoreboard players add FI_cow FI_Item_Cap 1
scoreboard players set FI_pig FI_Item_Cap 0
execute as @e[type=pig,tag=FI_pig] run scoreboard players add FI_pig FI_Item_Cap 1
scoreboard players set FI_chicken FI_Item_Cap 0
execute as @e[type=chicken,tag=FI_chicken] run scoreboard players add FI_chicken FI_Item_Cap 1
scoreboard players set FI_sheep FI_Item_Cap 0
execute as @e[type=sheep,tag=FI_sheep] run scoreboard players add FI_sheep FI_Item_Cap 1

execute store result score FI_cow FI_Random run random value 1..5
execute store result score FI_pig FI_Random run random value 1..5
execute store result score FI_sheep FI_Random run random value 1..5
execute store result score FI_chicken FI_Random run random value 1..5

execute if score FI_pig FI_Item_Cap matches ..8 in final_island:game if score FI_pig FI_Random matches 1 run summon pig 5 6 119 {variant:"minecraft:temperate",Tags:["FI_pig"]}
execute if score FI_pig FI_Item_Cap matches ..12 in final_island:game if score FI_pig FI_Random matches 2 run summon pig 5 6 115 {variant:"minecraft:temperate",Tags:["FI_pig"]}
execute if score FI_pig FI_Item_Cap matches ..15 in final_island:game if score FI_pig FI_Random matches 3 run summon pig 3 6 115 {variant:"minecraft:temperate",Tags:["FI_pig"]}

execute if score FI_cow FI_Item_Cap matches ..8 in final_island:game if score FI_cow FI_Random matches 1 run summon cow -74 2 83 {variant:"minecraft:temperate",Tags:["FI_cow"]}
execute if score FI_cow FI_Item_Cap matches ..12 in final_island:game if score FI_cow FI_Random matches 2 run summon cow -75 2 81 {variant:"minecraft:temperate",Tags:["FI_cow"]}
execute if score FI_cow FI_Item_Cap matches ..15 in final_island:game if score FI_cow FI_Random matches 3 run summon cow -79 2 78 {variant:"minecraft:temperate",Tags:["FI_cow"]}

execute if score FI_sheep FI_Item_Cap matches ..8 in final_island:game if score FI_sheep FI_Random matches 1 run summon sheep -54 3 103 {Color:0b,Tags:["FI_sheep"]}
execute if score FI_sheep FI_Item_Cap matches ..12 in final_island:game if score FI_sheep FI_Random matches 2 run summon sheep -56 3 102 {Color:0b,Tags:["FI_sheep"]}
execute if score FI_sheep FI_Item_Cap matches ..15 in final_island:game if score FI_sheep FI_Random matches 3 run summon sheep -56 3 100 {Color:0b,Tags:["FI_sheep"]}

execute if score FI_chicken FI_Item_Cap matches ..16 in final_island:game if score FI_chicken FI_Random matches 1 run summon chicken -29 5 119 {variant:"minecraft:temperate",Tags:["FI_chicken"]}
execute if score FI_chicken FI_Item_Cap matches ..20 in final_island:game if score FI_chicken FI_Random matches 2 run summon chicken -26 5 116 {variant:"minecraft:temperate",Tags:["FI_chicken"]}
execute if score FI_chicken FI_Item_Cap matches ..23 in final_island:game if score FI_chicken FI_Random matches 3 run summon chicken -24 5 119 {variant:"minecraft:temperate",Tags:["FI_chicken"]}

schedule function final_island:spawn_items/animals 65t