# updated
data remove storage ve:temp trade

execute if data block ~ ~ ~ {Items:[{Slot:10b}]} run function villedit:z/trade/buttons/create/0
execute if data block ~ ~ ~ {Items:[{Slot:11b}]} run function villedit:z/trade/buttons/create/1
execute if data block ~ ~ ~ {Items:[{Slot:13b}]} run function villedit:z/trade/buttons/create/3

data merge storage ve:temp {trade:{maxUses:2147483647}}

execute if score @s ve.reward_xp matches 1 run data modify storage ve:temp trade.rewardExp set value true
execute if score @s ve.reward_xp matches 0 run data modify storage ve:temp trade.rewardExp set value false

execute positioned ~ ~1 ~ run data modify entity @e[type=villager,limit=1,sort=nearest,tag=ve.editing] Offers.Recipes append from storage ve:temp trade

function villedit:z/reset_barrel

execute positioned ~ ~1 ~ store result entity @s data.Trades int 1 run data get entity @e[type=villager,limit=1,sort=nearest,tag=ve.editing] Offers.Recipes
item modify block ~ ~ ~ container.0 villedit:add_trade

tag @s remove ve.editor.trade
tag @s add ve.editor.menu
tag @s add ve.custom_trade_added