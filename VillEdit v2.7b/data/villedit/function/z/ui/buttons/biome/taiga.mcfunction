data modify storage ve:temp type set value "minecraft:taiga"
data merge entity @s {data:{Biome:"Taiga"}}

item replace block ~ ~ ~ container.12 with spruce_sapling[custom_name='{"text":"Cycle Biome","color":"aqua","italic":false}',lore=['[{"text":"Current Biome: ","color":"green","italic":false},{"text": "Taiga","color":"blue","italic":false}]'],custom_data={ve_ui:1b}]