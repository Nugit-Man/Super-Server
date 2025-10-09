#Fill in the secret
setblock 1014 1 42 minecraft:cut_red_sandstone
setblock 1014 0 42 minecraft:red_sandstone
setblock 1026 1 42 minecraft:cut_red_sandstone
setblock 1026 0 42 minecraft:red_sandstone

scoreboard objectives add AS_Map_DesertTomb dummy "Map: Desert Tomb"
scoreboard players set $ AS_Map_DesertTomb 100