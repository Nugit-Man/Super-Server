data modify storage ve:temp type set value "minecraft:plains"
data merge entity @s {data:{Biome:"Plains"}}

item replace block ~ ~ ~ container.12 with grass_block[custom_name={text:"Cycle Biome","color":"aqua",italic:false},lore=[[{text:"Current Biome: ","color":"green",italic:false},{text: "Plains","color":"blue",italic:false}]],custom_data={ve_ui:1b}]