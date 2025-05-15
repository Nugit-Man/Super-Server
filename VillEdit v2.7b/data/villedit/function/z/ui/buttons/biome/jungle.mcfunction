data modify storage ve:temp type set value "minecraft:jungle"
data merge entity @s {data:{Biome:"Jungle"}}

item replace block ~ ~ ~ container.12 with vine[custom_name='{text:"Cycle Biome","color":"aqua",italic:false}',lore=[[{text:"Current Biome: ","color":"green",italic:false},{text: "Jungle","color":"blue",italic:false}]],custom_data={ve_ui:1b}]