scoreboard players set FI_lapis FI_Item_Cap 0
execute as @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli",count:64}}] run scoreboard players add FI_lapis FI_Item_Cap 1

execute store result score FI_lapis FI_Random run random value 1..100
execute in final_island:game if score FI_lapis FI_Item_Cap matches 0 in final_island:game if score FI_lapis FI_Random matches 1..10 run summon item 68976 157 32 {Item:{id:"minecraft:lapis_lazuli",count:4b}}
execute in final_island:game if score FI_lapis FI_Item_Cap matches 0 in final_island:game if score FI_lapis FI_Random matches 10..20 run summon item 68979 158 54 {Item:{id:"minecraft:lapis_lazuli",count:4b}}
execute in final_island:game if score FI_lapis FI_Item_Cap matches 0 in final_island:game if score FI_lapis FI_Random matches 20..30 run summon item 69003 161 54 {Item:{id:"minecraft:lapis_lazuli",count:4b}}

execute in final_island:game if score FI_lapis FI_Item_Cap matches 0 in final_island:game if score FI_lapis FI_Random matches 30..40 run summon item 68976 157 32 {Item:{id:"minecraft:lapis_lazuli",count:5b}}
execute in final_island:game if score FI_lapis FI_Item_Cap matches 0 in final_island:game if score FI_lapis FI_Random matches 40..50 run summon item 68979 158 54 {Item:{id:"minecraft:lapis_lazuli",count:5b}}
execute in final_island:game if score FI_lapis FI_Item_Cap matches 0 in final_island:game if score FI_lapis FI_Random matches 50..60 run summon item 69003 161 54 {Item:{id:"minecraft:lapis_lazuli",count:5b}}
schedule function final_island:spawn_items/caves/lapis 60t