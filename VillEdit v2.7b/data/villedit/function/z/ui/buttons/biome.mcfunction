execute positioned ~ ~1 ~ run data modify storage ve:temp type set from entity @e[type=villager,limit=1,sort=nearest,tag=ve.editing] VillagerData.type

execute if data storage ve:temp {type:"minecraft:swamp"} run data modify storage ve:temp type set value "minecraft:_taiga"
execute if data storage ve:temp {type:"minecraft:snow"} run function villedit:z/ui/buttons/biome/swamp
execute if data storage ve:temp {type:"minecraft:savanna"} run function villedit:z/ui/buttons/biome/snow
execute if data storage ve:temp {type:"minecraft:plains"} run function villedit:z/ui/buttons/biome/savanna
execute if data storage ve:temp {type:"minecraft:jungle"} run function villedit:z/ui/buttons/biome/plains
execute if data storage ve:temp {type:"minecraft:desert"} run function villedit:z/ui/buttons/biome/jungle
execute if data storage ve:temp {type:"minecraft:taiga"} run function villedit:z/ui/buttons/biome/desert

execute if data storage ve:temp {type:"minecraft:_taiga"} run function villedit:z/ui/buttons/biome/taiga

execute positioned ~ ~1 ~ run data modify entity @e[type=villager,limit=1,sort=nearest,tag=ve.editing] VillagerData.type set from storage ve:temp type

clear @a #villedit:type[custom_data~{ve_ui:1b}]