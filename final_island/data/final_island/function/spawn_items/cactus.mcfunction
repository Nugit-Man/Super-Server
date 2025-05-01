scoreboard players set FI_cactus FI_Item_Cap 0
execute as @e[type=item,nbt={Item:{id:"minecraft:cactus",count:64}}] run scoreboard players add FI_cactus FI_Item_Cap 1

execute store result score FI_cactus FI_Random run random value 1..10
execute if score FI_cactus FI_Item_Cap matches 0 in final_island:game if score FI_cactus FI_Random matches 1 run summon item 110 11 -16 {Item:{id:"minecraft:cactus",count:3b}}
execute if score FI_cactus FI_Item_Cap matches 0 in final_island:game if score FI_cactus FI_Random matches 2..3 run summon item 110 11 -16 {Item:{id:"minecraft:cactus",count:2b}}
execute if score FI_cactus FI_Item_Cap matches 0 in final_island:game if score FI_cactus FI_Random matches 4..6 run summon item 110 11 -16 {Item:{id:"minecraft:cactus",count:1b}}
schedule function final_island:spawn_items/cactus 24t