execute positioned ~ ~1 ~ store result score .temp ve.silent run scoreboard players get @e[type=villager,limit=1,sort=nearest,tag=ve.editing] ve.silent
execute if score .temp ve.silent matches 0 run function villedit:z/ui/buttons/silent/on
execute if score .temp ve.silent matches 1 run function villedit:z/ui/buttons/silent/off
clear @a goat_horn[custom_data~{ve_ui:1b}]