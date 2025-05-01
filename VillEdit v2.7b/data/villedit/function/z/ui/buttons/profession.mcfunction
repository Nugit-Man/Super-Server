execute positioned ~ ~1 ~ run data modify storage ve:temp profession set from entity @e[type=villager,limit=1,sort=nearest,tag=ve.editing] VillagerData.profession

execute if data storage ve:temp {profession:"minecraft:weaponsmith"} run data modify storage ve:temp profession set value "minecraft:_nitwit"
execute if data storage ve:temp {profession:"minecraft:toolsmith"} run function villedit:z/ui/buttons/profession/weaponsmith
execute if data storage ve:temp {profession:"minecraft:shepherd"} run function villedit:z/ui/buttons/profession/toolsmith
execute if data storage ve:temp {profession:"minecraft:mason"} run function villedit:z/ui/buttons/profession/shepherd
execute if data storage ve:temp {profession:"minecraft:librarian"} run function villedit:z/ui/buttons/profession/mason
execute if data storage ve:temp {profession:"minecraft:leatherworker"} run function villedit:z/ui/buttons/profession/librarian
execute if data storage ve:temp {profession:"minecraft:fletcher"} run function villedit:z/ui/buttons/profession/leatherworker
execute if data storage ve:temp {profession:"minecraft:fisherman"} run function villedit:z/ui/buttons/profession/fletcher
execute if data storage ve:temp {profession:"minecraft:farmer"} run function villedit:z/ui/buttons/profession/fisherman
execute if data storage ve:temp {profession:"minecraft:cleric"} run function villedit:z/ui/buttons/profession/farmer
execute if data storage ve:temp {profession:"minecraft:cartographer"} run function villedit:z/ui/buttons/profession/cleric
execute if data storage ve:temp {profession:"minecraft:butcher"} run function villedit:z/ui/buttons/profession/cartographer
execute if data storage ve:temp {profession:"minecraft:armorer"} run function villedit:z/ui/buttons/profession/butcher
execute if data storage ve:temp {profession:"minecraft:nitwit"} run function villedit:z/ui/buttons/profession/armorer

execute if data storage ve:temp {profession:"minecraft:none"} run data modify storage ve:temp profession set value "minecraft:nitwit"
execute if data storage ve:temp {profession:"minecraft:_nitwit"} run function villedit:z/ui/buttons/profession/nitwit

execute positioned ~ ~1 ~ run data modify entity @e[type=villager,limit=1,sort=nearest,tag=ve.editing] VillagerData.profession set from storage ve:temp profession

execute unless entity @s[tag=ve.custom_trade_added] positioned ~ ~1 ~ run data modify entity @e[type=villager,limit=1,sort=nearest,tag=ve.editing] Offers.Recipes set value []

clear @a #villedit:profession[custom_data~{ve_ui:1b}]