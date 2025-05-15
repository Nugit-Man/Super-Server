execute positioned ~ ~1 ~ run data modify entity @e[type=villager,limit=1,sort=nearest,tag=ve.editing] Offers.Recipes set value []
tag @s remove ve.temp.reset
tellraw @p [{text:"[","color":"dark_green"},{text:"VE","color":"aqua"},{text:"]","color":"dark_green"},{text:" Removed all trades.","color":"red"}]