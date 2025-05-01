execute positioned ~ ~1 ~ run data modify storage ve:temp level set from entity @e[type=villager,limit=1,sort=nearest,tag=ve.editing] VillagerData.level

execute if data storage ve:temp {level:2} run data modify storage ve:temp level set value -1
execute if data storage ve:temp {level:3} run function villedit:z/ui/buttons/level/2
execute if data storage ve:temp {level:4} run function villedit:z/ui/buttons/level/3
execute if data storage ve:temp {level:5} run function villedit:z/ui/buttons/level/4
execute if data storage ve:temp {level:1} run function villedit:z/ui/buttons/level/5

execute if data storage ve:temp {level:-1} run function villedit:z/ui/buttons/level/1

execute positioned ~ ~1 ~ run data modify entity @e[type=villager,limit=1,sort=nearest,tag=ve.editing] VillagerData.level set from storage ve:temp level

clear @a #villedit:level[custom_data~{ve_ui:1b}]