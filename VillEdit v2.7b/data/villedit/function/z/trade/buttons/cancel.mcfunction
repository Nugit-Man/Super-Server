# updated
function villedit:z/reset_barrel

execute positioned ~ ~1 ~ store result entity @s data.Trades int 1 run data get entity @e[type=villager,limit=1,sort=nearest,tag=ve.editing] Offers.Recipes
item modify block ~ ~ ~ container.0 villedit:add_trade

tag @s remove ve.editor.trade
tag @s add ve.editor.menu

clear @a redstone[custom_data~{ve_ui:1b}]