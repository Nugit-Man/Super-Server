execute positioned ~ ~1 ~ store result score .temp ve.reward_xp run scoreboard players get @e[type=villager,limit=1,sort=nearest,tag=ve.editing] ve.reward_xp
execute if score .temp ve.reward_xp matches 0 run function villedit:z/trade/buttons/xp/on
execute if score .temp ve.reward_xp matches 1 run function villedit:z/trade/buttons/xp/off

clear @a #villedit:xp[custom_data~{ve_ui:1b}]