execute positioned ~ ~1 ~ run data remove entity @e[type=villager,limit=1,sort=nearest,tag=ve.editing] Offers.Recipes[-1]

execute positioned ~ ~1 ~ store result entity @s data.Trades int 1 run data get entity @e[type=villager,limit=1,sort=nearest,tag=ve.editing] Offers.Recipes
item modify block ~ ~ ~ container.0 villedit:add_trade

clear @a redstone[custom_data~{ve_ui:1b}]
item replace block ~ ~ ~ container.9 with redstone[custom_name={text:"Remove Last Trade",color:"red",italic:false},custom_data={ve_ui:1b}]