execute positioned ~ ~1 ~ store result score .temp ve.glow run scoreboard players get @e[type=villager,limit=1,sort=nearest,tag=ve.editing] ve.glow
execute if score .temp ve.glow matches 0 run function villedit:z/ui/buttons/glow/on
execute if score .temp ve.glow matches 1 run function villedit:z/ui/buttons/glow/off
clear @a redstone_lamp[custom_data~{ve_ui:1b}]