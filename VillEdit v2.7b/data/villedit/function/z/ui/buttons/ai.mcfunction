execute positioned ~ ~1 ~ store result score .temp ve.ai run scoreboard players get @e[type=villager,limit=1,sort=nearest,tag=ve.editing] ve.ai
execute if score .temp ve.ai matches 0 run function villedit:z/ui/buttons/ai/on
execute if score .temp ve.ai matches 1 run function villedit:z/ui/buttons/ai/off
clear @a #villedit:ai[custom_data~{ve_ui:1b}]