data modify storage ve:temp type set value "minecraft:swamp"
data merge entity @s {data:{Biome:"Swamp"}}

item replace block ~ ~ ~ container.12 with mangrove_leaves[custom_name='{text:"Cycle Biome","color":"aqua",italic:false}',lore=[[{text:"Current Biome: ","color":"green",italic:false},{text: "Swamp","color":"blue",italic:false}]],custom_data={ve_ui:1b}]