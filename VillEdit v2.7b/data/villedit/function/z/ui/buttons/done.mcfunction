item replace block ~ ~ ~ container.17 with villager_spawn_egg

# Apply custom villager data to the egg
execute positioned ~ ~1 ~ run data modify block ~ ~-1 ~ Items[{Slot:17b}].components."minecraft:entity_data".id set value "minecraft:villager"
execute positioned ~ ~1 ~ run data modify block ~ ~-1 ~ Items[{Slot:17b}].components."minecraft:entity_data".VillagerData set from entity @e[type=villager,limit=1,sort=nearest,tag=ve.editing] VillagerData
execute positioned ~ ~1 ~ run data modify block ~ ~-1 ~ Items[{Slot:17b}].components."minecraft:entity_data".CustomName set from entity @e[type=villager,limit=1,sort=nearest,tag=ve.editing] CustomName
execute positioned ~ ~1 ~ run data modify block ~ ~-1 ~ Items[{Slot:17b}].components."minecraft:entity_data".Offers set from entity @e[type=villager,limit=1,sort=nearest,tag=ve.editing] Offers
execute positioned ~ ~1 ~ run data modify block ~ ~-1 ~ Items[{Slot:17b}].components."minecraft:entity_data".Xp set value 1
execute positioned ~ ~1 ~ store result block ~ ~-1 ~ Items[{Slot:17b}].components."minecraft:entity_data".NoAI byte 1 run scoreboard players get @e[type=villager,limit=1,sort=nearest,tag=ve.editing] ve.ai
execute positioned ~ ~1 ~ store result block ~ ~-1 ~ Items[{Slot:17b}].components."minecraft:entity_data".Glowing byte 1 run scoreboard players get @e[type=villager,limit=1,sort=nearest,tag=ve.editing] ve.glow
execute positioned ~ ~1 ~ store result block ~ ~-1 ~ Items[{Slot:17b}].components."minecraft:entity_data".Silent byte 1 run scoreboard players get @e[type=villager,limit=1,sort=nearest,tag=ve.editing] ve.silent

data modify block ~ ~-1 ~ Items[{Slot:17b}].components."minecraft:entity_data".Invulnerable set value True

# count trades
execute positioned ~ ~1 ~ store result entity @s data.Trades int 1 run data get entity @e[type=villager,limit=1,sort=nearest,tag=ve.editing] Offers.Recipes

# Set display data
execute positioned ~ ~1 ~ run item modify block ~ ~-1 ~ container.17 villedit:egg

# Give the egg to the player
execute at @p run summon item ~ ~ ~ {Item:{id:"minecraft:villager_spawn_egg",count:1b},Tags:["ve.temp.item"]}
data modify entity @e[type=item,limit=1,tag=ve.temp.item] Item set from block ~ ~ ~ Items[{Slot:17b}]

# Reset UI
clear @a emerald_block[custom_data~{ve_ui:1b}]
item replace block ~ ~ ~ container.17 with emerald_block[custom_name={text:"Done",color:"green",italic:false},custom_data={ve_ui:1b}]