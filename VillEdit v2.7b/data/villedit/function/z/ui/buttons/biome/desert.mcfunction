data modify storage ve:temp type set value "minecraft:desert"
data merge entity @s {data:{Biome:"Desert"}}

item replace block ~ ~ ~ container.12 with sand[custom_name={text:"Cycle Biome","color":"aqua",italic:false},lore=[[{text:"Current Biome: ","color":"green",italic:false},{text: "Desert","color":"blue",italic:false}]],custom_data={ve_ui:1b}]