scoreboard players set FI_lapis FI_Item_Cap 0
execute as @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli",count:64}}] run scoreboard players add FI_lapis FI_Item_Cap 1

execute store result score FI_lapis FI_Random run random value 1..100
execute if score FI_lapis FI_Item_Cap matches 0 in final_island:game if score FI_lapis FI_Random matches 1..10 run summon item ~ ~ ~ {Item:{id:"minecraft:lapis_lazuli",count:4b}}
execute if score FI_lapis FI_Item_Cap matches 0 in final_island:game if score FI_lapis FI_Random matches 10..20 run summon item ~ ~ ~ {Item:{id:"minecraft:lapis_lazuli",count:4b}}
execute if score FI_lapis FI_Item_Cap matches 0 in final_island:game if score FI_lapis FI_Random matches 20..30 run summon item ~ ~ ~ {Item:{id:"minecraft:lapis_lazuli",count:4b}}

execute if score FI_lapis FI_Item_Cap matches 0 in final_island:game if score FI_lapis FI_Random matches 30..40 run summon item ~ ~ ~ {Item:{id:"minecraft:lapis_lazuli",count:5b}}
execute if score FI_lapis FI_Item_Cap matches 0 in final_island:game if score FI_lapis FI_Random matches 40..50 run summon item ~ ~ ~ {Item:{id:"minecraft:lapis_lazuli",count:5b}}
execute if score FI_lapis FI_Item_Cap matches 0 in final_island:game if score FI_lapis FI_Random matches 50..60 run summon item ~ ~ ~ {Item:{id:"minecraft:lapis_lazuli",count:15}}
schedule function final_island:spawn_items/acacia_planks 32t