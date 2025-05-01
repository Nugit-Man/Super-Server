execute store result score .waiting_for_reset ve.temp run execute if entity @s[tag=ve.temp.reset]
execute if score .waiting_for_reset ve.temp matches 1 run function villedit:z/ui/buttons/reset_trades/run
execute if score .waiting_for_reset ve.temp matches 0 run function villedit:z/ui/buttons/reset_trades/warn

execute positioned ~ ~1 ~ store result entity @s data.Trades int 1 run data get entity @e[type=villager,limit=1,sort=nearest,tag=ve.editing] Offers.Recipes
item modify block ~ ~ ~ container.0 villedit:add_trade

clear @a redstone_block[custom_data~{ve_ui:1b}]
item replace block ~ ~ ~ container.18 with redstone_block[custom_name={text:"Reset All Trades",color:"dark_red",italic:false},custom_data={ve_ui:1b}]